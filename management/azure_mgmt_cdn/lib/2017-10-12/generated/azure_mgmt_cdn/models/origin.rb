# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_10_12
  module Models
    #
    # CDN origin is the source of the content being delivered via CDN. When the
    # edge nodes represented by an endpoint do not have the requested content
    # cached, they attempt to fetch it from one or more of the configured
    # origins.
    #
    class Origin < TrackedResource

      include MsRestAzure

      # @return [String] The address of the origin. Domain names, IPv4
      # addresses, and IPv6 addresses are supported.
      attr_accessor :host_name

      # @return [Integer] The value of the HTTP port. Must be between 1 and
      # 65535.
      attr_accessor :http_port

      # @return [Integer] The value of the https port. Must be between 1 and
      # 65535.
      attr_accessor :https_port

      # @return [OriginResourceState] Resource status of the origin. Possible
      # values include: 'Creating', 'Active', 'Deleting'
      attr_accessor :resource_state

      # @return [String] Provisioning status of the origin.
      attr_accessor :provisioning_state


      #
      # Mapper for Origin class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Origin',
          type: {
            name: 'Composite',
            class_name: 'Origin',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              host_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              http_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              https_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpsPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
