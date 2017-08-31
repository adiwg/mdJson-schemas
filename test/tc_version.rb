require 'minitest/autorun'
require 'json'
require File.join(File.dirname(__FILE__), '..', 'lib', 'adiwg-mdjson_schemas.rb')

class TestSchemaVersion < Minitest::Test
  def test_schema_version
    schema = JSON.load File.new(File.join(File.dirname(__FILE__), '..', 'schema', 'schema.json'))
    assert_equal(ADIWG::MdjsonSchemas::VERSION, schema['version'], 'Gem version and schema versions are not equal')
  end
  def test_node_version
    package = JSON.load File.new(File.join(File.dirname(__FILE__), '..', 'package.json'))
    assert_equal(ADIWG::MdjsonSchemas::VERSION, package['version'], 'Gem version and npm versions are not equal')
  end
end
