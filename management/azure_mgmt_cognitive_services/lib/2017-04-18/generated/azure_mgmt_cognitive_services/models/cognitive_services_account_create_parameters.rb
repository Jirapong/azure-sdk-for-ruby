# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # The parameters to provide for the account.
    #
    class CognitiveServicesAccountCreateParameters

      include MsRestAzure

      # @return [Sku] Required. Gets or sets the SKU of the resource.
      attr_accessor :sku

      # @return [Kind] Required. Gets or sets the Kind of the resource.
      # Possible values include: 'Academic', 'Bing.Autosuggest', 'Bing.Search',
      # 'Bing.Speech', 'Bing.SpellCheck', 'ComputerVision', 'ContentModerator',
      # 'CustomSpeech', 'Emotion', 'Face', 'LUIS', 'Recommendations',
      # 'SpeakerRecognition', 'Speech', 'SpeechTranslation', 'TextAnalytics',
      # 'TextTranslation', 'WebLM'
      attr_accessor :kind

      # @return [String] Required. Gets or sets the location of the resource.
      # This will be one of the supported and registered Azure Geo Regions
      # (e.g. West US, East US, Southeast Asia, etc.). The geo region of a
      # resource cannot be changed once it is created, but if an identical geo
      # region is specified on update the request will succeed.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets a list of key value pairs
      # that describe the resource. These tags can be used in viewing and
      # grouping this resource (across resource groups). A maximum of 15 tags
      # can be provided for a resource. Each tag must have a key no greater
      # than 128 characters and value no greater than 256 characters.
      attr_accessor :tags

      # @return Must exist in the request. Must be an empty object. Must not be
      # null.
      attr_accessor :properties


      #
      # Mapper for CognitiveServicesAccountCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CognitiveServicesAccountCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'CognitiveServicesAccountCreateParameters',
            model_properties: {
              sku: {
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              kind: {
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              properties: {
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end