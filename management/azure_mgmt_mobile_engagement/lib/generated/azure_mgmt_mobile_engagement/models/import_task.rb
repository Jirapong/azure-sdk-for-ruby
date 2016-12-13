# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class ImportTask

      include MsRestAzure

      # @return [String] A shared Access Signature (SAS) Storage URI where the
      # job results will be retrieved from.
      attr_accessor :storage_url


      #
      # Mapper for ImportTask class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'importTask',
          type: {
            name: 'Composite',
            class_name: 'ImportTask',
            model_properties: {
              storage_url: {
                required: false,
                serialized_name: 'storageUrl',
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
