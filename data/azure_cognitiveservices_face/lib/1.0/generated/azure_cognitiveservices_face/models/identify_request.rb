# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Request body for identify face operation.
    #
    class IdentifyRequest

      include MsRestAzure

      # @return [String] personGroupId of the target person group, created by
      # PersonGroups.Create
      attr_accessor :person_group_id

      # @return Array of candidate faceId created by Face - Detect.
      attr_accessor :face_ids

      # @return [Integer] The number of top similar faces returned. Default
      # value: 1 .
      attr_accessor :max_num_of_candidates_returned

      # @return [Float]
      attr_accessor :confidence_threshold


      #
      # Mapper for IdentifyRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IdentifyRequest',
          type: {
            name: 'Composite',
            class_name: 'IdentifyRequest',
            model_properties: {
              person_group_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'personGroupId',
                constraints: {
                  MaxLength: 64,
                  Pattern: '^[a-z0-9-_]+$'
                },
                type: {
                  name: 'String'
                }
              },
              face_ids: {
                client_side_validation: true,
                required: true,
                serialized_name: 'faceIds',
                constraints: {
                  MaxItems: 1000
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UuidElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              max_num_of_candidates_returned: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxNumOfCandidatesReturned',
                default_value: 1,
                constraints: {
                  InclusiveMaximum: 1000,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              confidence_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'confidenceThreshold',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end