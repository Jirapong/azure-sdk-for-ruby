#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "test_helper"
require "azure/queues/queue"
require "azure/queues/message"
require "azure/queues/uri"

describe Azure::Queues::Message do

  let :service do
    MiniTest::Mock.new
  end

  let :queue do
    Azure::Queues::Queue.new(
      "name",
      Azure::Queues::URI.queue("name", {}, "http://username.blob.core.windows.net"),
      {},
      service
    )
  end

  describe ".from_node" do
    let :node do
      Nokogiri::XML(Fixtures[:messages]) % "QueueMessagesList"
    end

    subject do
      Azure::Queues::Message.from_node(node) { |m| m.queue = queue }
    end

    it "parses the node and gets the correct values for each attribute" do
      subject.id.must_equal "5974b586-0df3-4e2d-ad0c-18e3892bfca2"
      subject.insertion_time.must_equal Time.parse("Fri, 09 Oct 2009 21:04:30 GMT")
      subject.expiration_time.must_equal Time.parse("Fri, 16 Oct 2009 21:04:30 GMT")
      subject.pop_receipt.must_equal "YzQ4Yzg1MDItYTc0Ny00OWNjLTkxYTUtZGM0MDFiZDAwYzEw"
      subject.time_next_visible.must_equal Time.parse("Fri, 09 Oct 2009 23:29:20 GMT")
      subject.dequeue_count.must_equal 1
      subject.text.must_equal "PHRlc3Q+dGhpcyBpcyBhIHRlc3QgbWVzc2FnZTwvdGVzdD4="
    end
  end
end
