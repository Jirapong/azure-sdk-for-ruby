# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents a disaster recovery configuration.
    #
    class DisasterRecoveryConfiguration < ProxyResource

      include MsRestAzure

      # @return [DisasterRecoveryConfigurationStatus] The status of the
      # disaster recovery configuration. Possible values include: 'Creating',
      # 'Ready', 'FailingOver', 'Dropping'
      attr_accessor :status

      # @return [DisasterRecoveryConfigurationAutoFailover] Whether or not
      # failover can be done automatically. Possible values include: 'Off',
      # 'On'
      attr_accessor :auto_failover

      # @return [DisasterRecoveryConfigurationFailoverPolicy] How aggressive
      # the automatic failover should be. Possible values include: 'Manual',
      # 'Automatic'
      attr_accessor :failover_policy

      # @return [String] Id of the partner server.
      attr_accessor :partner_server_id

      # @return [String] Logical name of the server.
      attr_accessor :logical_server_name

      # @return [String] Logical name of the partner server.
      attr_accessor :partner_logical_server_name

      # @return [DisasterRecoveryConfigurationRole] The role of the current
      # server in the disaster recovery configuration. Possible values include:
      # 'None', 'Primary', 'Secondary'
      attr_accessor :role

      # @return [String] Location of the server that contains this disaster
      # recovery configuration.
      attr_accessor :location


      #
      # Mapper for DisasterRecoveryConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DisasterRecoveryConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DisasterRecoveryConfiguration',
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
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              auto_failover: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.autoFailover',
                type: {
                  name: 'String'
                }
              },
              failover_policy: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.failoverPolicy',
                type: {
                  name: 'String'
                }
              },
              partner_server_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.partnerServerId',
                type: {
                  name: 'String'
                }
              },
              logical_server_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.logicalServerName',
                type: {
                  name: 'String'
                }
              },
              partner_logical_server_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerLogicalServerName',
                type: {
                  name: 'String'
                }
              },
              role: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.role',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
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