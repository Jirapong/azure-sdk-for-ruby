# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Target devices based on a string tag value.
    #
    class StringTagCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "string-tag"
      end

      attr_accessor :type

      # @return [String] The name of the custom tag.
      attr_accessor :name

      # @return [String] A custom string to match for tag value (? and *
      # characters can be used to perform wildcard matching).
      attr_accessor :value


      #
      # Mapper for StringTagCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'string-tag',
          type: {
            name: 'Composite',
            class_name: 'StringTagCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end