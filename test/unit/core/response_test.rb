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
require 'test_helper'
require "azure/core/response"

describe Azure::Core::Response do
  it "can act as an error" do
    http_response = MiniTest::Mock.new
    http_response.stub(:body, Fixtures[:error])
    http_response.stub(:code, "409")

    response = Azure::Core::Response.new(http_response)

    assert_raises(Azure::Core::HTTPError) do
      raise response
    end
  end

  it "converts net/http headers into strings" do
    http_response = MiniTest::Mock.new
    http_response.stub(:to_hash, { "Content-Type" => ["text/xml"] })

    response = Azure::Core::Response.new(http_response)
    response.headers["Content-Type"].must_equal "text/xml"
  end

  describe Azure::Core::Response::HeaderHash do
    subject do
      Azure::Core::Response::HeaderHash.new(
        "FooBar" => ["1"], "bazqux" => ["2"], "QUXFOO" => ["3"]
      )
    end

    it "returns the header values as strings, not arrays" do
      subject["FooBar"].must_equal "1"
      subject["bazqux"].must_equal "2"
      subject["QUXFOO"].must_equal "3"
    end

    it "obtains keys in a case-insensitive fashion" do
      subject["foobar"].must_equal "1"
      subject["BaZqUx"].must_equal "2"
    end
  end
end
