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
        assert_nil(JSON::Validator::schemas.detect { |schema| schema[1].schema['additionalProperties'] }, 'Failed to set additionalProperties.')
    end
end
