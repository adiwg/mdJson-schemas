=begin
* Description: Test Utility functions
* Author: Josh Bradley
* Date: 2014-05-06
* License: Public Domain
=end

require 'minitest/autorun'
require File.join(File.dirname(__FILE__),'..','lib', 'adiwg-mdjson_schemas.rb')

class TestUtils < Minitest::Test
    def test_examples_dir
      puts ADIWG::MdjsonSchemas::Utils.examples_dir
        errors = File.exist?(ADIWG::MdjsonSchemas::Utils.examples_dir)
        assert_equal( true, errors, failure_message = 'Examples directory does not exist.')
    end

    def test_schema_path
        errors = File.file?(ADIWG::MdjsonSchemas::Utils.schema_path)
        assert_equal( true, errors, failure_message = 'File schema.json does not exist.')
    end

    def test_schema_dir
        errors = File.exist?(ADIWG::MdjsonSchemas::Utils.schema_dir)
        assert_equal( true, errors, failure_message = 'Schema directory does not exist.')
    end
end