# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Model class for event details of a job status event.
    #
    class JobStatusEventDetails < EventSpecificDetails

      include MsRestAzure


      def initialize
        @instanceType = "JobStatus"
      end

      attr_accessor :instanceType

      # @return [String] Job arm id for the event.
      attr_accessor :job_id

      # @return [String] JobName for the Event.
      attr_accessor :job_friendly_name

      # @return [String] JobStatus for the Event.
      attr_accessor :job_status

      # @return [String] AffectedObjectType for the event.
      attr_accessor :affected_object_type


      #
      # Mapper for JobStatusEventDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobStatus',
          type: {
            name: 'Composite',
            class_name: 'JobStatusEventDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              job_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobId',
                type: {
                  name: 'String'
                }
              },
              job_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobFriendlyName',
                type: {
                  name: 'String'
                }
              },
              job_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobStatus',
                type: {
                  name: 'String'
                }
              },
              affected_object_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'affectedObjectType',
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
