# * Description: Base helper class for tests of examples schemas and templates.
#      Any tests should inherit from this class.
# * Author: Josh Bradley
# * License: Public Domain

require 'minitest/autorun'
require 'json'
require 'json-schema'
require File.join(File.dirname(__FILE__), '..', 'lib', 'adiwg-mdjson_schemas.rb')

class TestHelper < Minitest::Test
    @@dir = File.join(File.dirname(__FILE__), '..', 'schema/')

    @@example = File.join(File.dirname(__FILE__), '..', 'examples/')

    @@schema = File.join(File.dirname(__FILE__), '..', 'schema', 'schema.json')

    @@strict = true

    def self.load_json(filename)
        JSON.load File.new(filename)
    end

    schemas = `git ls-files #{@@dir}/schema`.split($/)

    schemas.each do |schema|
      name = File.basename(schema)
p name
      jschema = JSON::Schema.new(TestHelper.load_json(schema), Addressable::URI.parse(name))
      JSON::Validator.add_schema(jschema)
      # JSON::Validator.schema_reader = JSON::Schema::Reader.new(
      #   :accept_uri => false,
      #   :accept_file => false
      # )
    end
end
