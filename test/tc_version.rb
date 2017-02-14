require 'minitest/autorun'
require 'json'
require File.join(File.dirname(__FILE__), '..', 'lib', 'adiwg-mdjson_schemas.rb')

class TestSchemaVersion < Minitest::Test
  def test_schema_version
    schema = JSON.load File.new(File.join(File.dirname(__FILE__), '..', 'schema', 'schema.json'))
    assert_equal(ADIWG::MdjsonSchemas::VERSION, schema['version'], 'Gem version and schema versions are not equal')
  end
end
