# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2018-01-01/generated/azure_event_grid/module_definition'
require 'ms_rest_azure'

module Azure::EventGrid::V2018_01_01
  autoload :EventGridClient,                                    '2018-01-01/generated/azure_event_grid/event_grid_client.rb'

  module Models
    autoload :EventGridEvent,                                     '2018-01-01/generated/azure_event_grid/models/event_grid_event.rb'
    autoload :StorageBlobCreatedEventData,                        '2018-01-01/generated/azure_event_grid/models/storage_blob_created_event_data.rb'
    autoload :StorageBlobDeletedEventData,                        '2018-01-01/generated/azure_event_grid/models/storage_blob_deleted_event_data.rb'
    autoload :EventHubCaptureFileCreatedEventData,                '2018-01-01/generated/azure_event_grid/models/event_hub_capture_file_created_event_data.rb'
    autoload :ResourceWriteFailureData,                           '2018-01-01/generated/azure_event_grid/models/resource_write_failure_data.rb'
    autoload :DeviceLifeCycleEventProperties,                     '2018-01-01/generated/azure_event_grid/models/device_life_cycle_event_properties.rb'
    autoload :ResourceDeleteSuccessData,                          '2018-01-01/generated/azure_event_grid/models/resource_delete_success_data.rb'
    autoload :DeviceTwinMetadata,                                 '2018-01-01/generated/azure_event_grid/models/device_twin_metadata.rb'
    autoload :ResourceDeleteCancelData,                           '2018-01-01/generated/azure_event_grid/models/resource_delete_cancel_data.rb'
    autoload :DeviceTwinProperties,                               '2018-01-01/generated/azure_event_grid/models/device_twin_properties.rb'
    autoload :ResourceWriteCancelData,                            '2018-01-01/generated/azure_event_grid/models/resource_write_cancel_data.rb'
    autoload :DeviceTwinInfoProperties,                           '2018-01-01/generated/azure_event_grid/models/device_twin_info_properties.rb'
    autoload :ResourceWriteSuccessData,                           '2018-01-01/generated/azure_event_grid/models/resource_write_success_data.rb'
    autoload :DeviceTwinInfoX509Thumbprint,                       '2018-01-01/generated/azure_event_grid/models/device_twin_info_x509thumbprint.rb'
    autoload :ResourceDeleteFailureData,                          '2018-01-01/generated/azure_event_grid/models/resource_delete_failure_data.rb'
    autoload :DeviceTwinInfo,                                     '2018-01-01/generated/azure_event_grid/models/device_twin_info.rb'
    autoload :IotHubDeviceCreatedEventData,                       '2018-01-01/generated/azure_event_grid/models/iot_hub_device_created_event_data.rb'
    autoload :IotHubDeviceDeletedEventData,                       '2018-01-01/generated/azure_event_grid/models/iot_hub_device_deleted_event_data.rb'
  end
end