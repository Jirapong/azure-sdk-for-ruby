# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The job.
    #
    class Job < BaseModel

      include MsRestAzure

      # @return [JobStatus] The current status of the job. Possible values
      # include: 'Running', 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :status

      # @return [DateTime] The UTC time at which the job was started.
      attr_accessor :start_time

      # @return [DateTime] The UTC time at which the job completed.
      attr_accessor :end_time

      # @return [Integer] The percentage of the job that is already complete.
      attr_accessor :percent_complete

      # @return [JobErrorDetails] The error details, if any, for the job.
      attr_accessor :error

      # @return [JobType] The type of the job. Possible values include:
      # 'ScheduledBackup', 'ManualBackup', 'RestoreBackup', 'CloneVolume',
      # 'FailoverVolumeContainers', 'CreateLocallyPinnedVolume',
      # 'ModifyVolume', 'InstallUpdates', 'SupportPackageLogs',
      # 'CreateCloudAppliance'
      attr_accessor :job_type

      # @return [DataStatistics] The data statistics properties of the job.
      attr_accessor :data_stats

      # @return [String] The entity identifier for which the job ran.
      attr_accessor :entity_label

      # @return [String] The entity type for which the job ran.
      attr_accessor :entity_type

      # @return [Array<JobStage>] The job stages.
      attr_accessor :job_stages

      # @return [String] The device ID in which the job ran.
      attr_accessor :device_id

      # @return [Boolean] Represents whether the job is cancellable or not.
      attr_accessor :is_cancellable

      # @return [BackupType] The backup type (CloudSnapshot | LocalSnapshot).
      # Applicable only for backup jobs. Possible values include:
      # 'LocalSnapshot', 'CloudSnapshot'
      attr_accessor :backup_type

      # @return [String] The source device ID of the failover job.
      attr_accessor :source_device_id

      # @return [DateTime] The time of the backup used for the failover.
      attr_accessor :backup_point_in_time


      #
      # Mapper for Job class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Job',
          type: {
            name: 'Composite',
            class_name: 'Job',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'JobStatus'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              percent_complete: {
                client_side_validation: true,
                required: true,
                serialized_name: 'percentComplete',
                type: {
                  name: 'Number'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'JobErrorDetails'
                }
              },
              job_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.jobType',
                type: {
                  name: 'Enum',
                  module: 'JobType'
                }
              },
              data_stats: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataStats',
                type: {
                  name: 'Composite',
                  class_name: 'DataStatistics'
                }
              },
              entity_label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.entityLabel',
                type: {
                  name: 'String'
                }
              },
              entity_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.entityType',
                type: {
                  name: 'String'
                }
              },
              job_stages: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobStages',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobStageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobStage'
                      }
                  }
                }
              },
              device_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deviceId',
                type: {
                  name: 'String'
                }
              },
              is_cancellable: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isCancellable',
                type: {
                  name: 'Boolean'
                }
              },
              backup_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backupType',
                type: {
                  name: 'Enum',
                  module: 'BackupType'
                }
              },
              source_device_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceDeviceId',
                type: {
                  name: 'String'
                }
              },
              backup_point_in_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backupPointInTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
