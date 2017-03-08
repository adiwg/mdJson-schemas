# * Description: Base helper class for tests of examples schemas and templates.
#      Any tests should inherit from this class.
# * Author: Josh Bradley
# * License: Public Domain

require 'minitest/autorun'
require 'json'
require 'json-schema'
require File.join(File.dirname(__FILE__), '..', 'lib', 'adiwg-mdjson_schemas.rb')

class TestHelper < Minitest::Test
  @@dir = File.join(File.dirname(__FILE__), '..', '/')

  @@example = File.join(File.dirname(__FILE__), '..', 'examples/')

  @@schema = File.join(File.dirname(__FILE__), '..', 'schema', 'schema.json')

  @@strict = false

  # def self.load_json(filename)
  #   JSON.load File.new(filename)
  # end
  #
  # schemas = `git ls-files #{@@dir}/schema`.split($/)
  #
  # schemas.each do |schema|
  #   name = File.basename(schema)
  #   jschema = JSON::Schema.new(TestHelper.load_json(schema), Addressable::URI.parse(name))
  #
  #   JSON::Validator.add_schema(jschema)
  # end
  ADIWG::MdjsonSchemas::Utils.load_schemas(false)
end
