# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Parameters that define a geographic location.
    #
    class AzureReachabilityReportLocation

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the country.
      attr_accessor :country

      # @return [String] The name of the state.
      attr_accessor :state

      # @return [String] The name of the city or town.
      attr_accessor :city


      #
      # Mapper for AzureReachabilityReportLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureReachabilityReportLocation',
          type: {
            name: 'Composite',
            class_name: 'AzureReachabilityReportLocation',
            model_properties: {
              country: {
                required: true,
                serialized_name: 'country',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              city: {
                required: false,
                serialized_name: 'city',
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