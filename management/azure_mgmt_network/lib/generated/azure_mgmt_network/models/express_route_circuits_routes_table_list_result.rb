# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Response for ListRoutesTable associated with the Express Route Circuits
    # API.
    #
    class ExpressRouteCircuitsRoutesTableListResult

      include MsRestAzure

      # @return [Array<ExpressRouteCircuitRoutesTable>] The list of routes
      # table.
      attr_accessor :value

      # @return [String] The URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for ExpressRouteCircuitsRoutesTableListResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitsRoutesTableListResult',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitsRoutesTableListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExpressRouteCircuitRoutesTableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteCircuitRoutesTable'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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