require 'json'
require 'json-schema'

module ADIWG
  module MdjsonSchemas
    # Utility methods for accessing and loading schemas
    #
    module Utils
      # load json files
      #
      # @param [String] filename The path and file name to load
      def self.load_json(filename)
        JSON.load File.new(filename)
      end

      # Return the path to main schema.json file.
      #
      # @return [String] The path to the schema.json file
      def self.schema_path
        File.join(File.dirname(File.expand_path(__FILE__)), '../../../schema/schema.json')
      end

      # Return the path to schema directory.
      #
      # @return [String] The path to schema directory
      def self.schema_dir
        File.join(File.dirname(File.expand_path(__FILE__)), '../../../schema/')
      end

      # Return the path to examples directory.
      #
      # @return [String] The path to examples directory
      def self.examples_dir
        File.join(File.dirname(File.expand_path(__FILE__)), '../../../examples/')
      end

      # Pre-load all of the json-schemas for mdJSON validation
      #
      # @param [Boolean] strict If true, will disallow additional properties
      # @return [nil]
      def self.load_schemas(strict = false)
        Dir.glob(schema_dir + '*.json') do |schema|
          loaded = Utils.load_json(schema)
          name = File.basename(schema)

          if strict
            loaded['additionalProperties'] = false
            unless loaded['definitions'].nil?
              loaded['definitions'].each do |_key, val|
                val['additionalProperties'] = false
              end
            end
          end

          jschema = JSON::Schema.new(loaded, Addressable::URI.parse(name))

          JSON::Validator.add_schema(jschema)
        end
      end

      # Load one schema and make it strict, i.e. additionalProperties=false and
      # all properties required
      #
      # @param [String] schema The filename of the schema to load
      # @return [Hash] The schema as Ruby hash
      def self.load_strict(schema)
        loaded = load_json(schema_dir + schema)
        loaded['additionalProperties'] = false
        loaded['required'] = loaded['properties'].keys unless loaded['properties'].nil?

        unless loaded['definitions'].nil?
          loaded['definitions'].each do |_key, val|
            val['additionalProperties'] = false
            val['required'] = val['properties'].keys unless val['properties'].nil?
          end
        end

        loaded
      end
    end
  end
end
