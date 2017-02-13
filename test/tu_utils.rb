# * Description: Test Utility functions
# * Author: Josh Bradley
# * License: Public Domain

require 'minitest/autorun'
require File.join(File.dirname(__FILE__), '..', 'lib', 'adiwg-mdjson_schemas.rb')

class TestUtils < Minitest::Test
  def test_examples_dir
    errors = File.exist?(ADIWG::MdjsonSchemas::Utils.examples_dir)
    assert_equal(true, errors, 'Examples directory does not exist.')
  end

  def test_schema_path
    errors = File.file?(ADIWG::MdjsonSchemas::Utils.schema_path)
    assert_equal(true, errors, 'File schema.json does not exist.')
  end

  def test_schema_dir
    errors = File.exist?(ADIWG::MdjsonSchemas::Utils.schema_dir)
    assert_equal(true, errors, 'Schema directory does not exist.')
  end

  def test_load_schemas
    assert_nil(ADIWG::MdjsonSchemas::Utils.load_schemas, 'Failed to load schemas.')

    JSON::Validator.clear_cache

    assert_nil(ADIWG::MdjsonSchemas::Utils.load_schemas(true), 'Failed to load schemas.')
    assert_nil(JSON::Validator.schemas.detect { |schema| schema[1].schema['additionalProperties'] }, 'Failed to set additionalProperties.')
  end

  def test_load_strict
    loaded = ADIWG::MdjsonSchemas::Utils.load_strict('contact.json')

    assert_kind_of(Hash, loaded, 'Failed to load schema.')

    refute(loaded['additionalProperties'], 'additionalProperties is true')
    refute_nil(loaded['additionalProperties'], 'additionalProperties is nil')
    assert_equal(loaded['required'], loaded['properties'].keys, 'All properties not required in main schema')

    refute(loaded['definitions']['address']['additionalProperties'], 'Address additionalProperties is true')
    refute_nil(loaded['definitions']['address']['additionalProperties'], 'additionalProperties is nil')
    assert_equal(loaded['definitions']['address']['required'], loaded['definitions']['address']['properties'].keys, 'All properties not required in address schema')
  end
end
