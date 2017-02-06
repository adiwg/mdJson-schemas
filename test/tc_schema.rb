require 'helper.rb'

class TestRootSchema < TestHelper
    def test_root_schema
        errors = JSON::Validator.fully_validate('schema.json', @@example + 'mdJson.json', strict: @@strict)
        assert(errors.empty?, errors.join("\n"))
    end
end
