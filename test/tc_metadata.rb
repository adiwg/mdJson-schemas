require 'helper.rb'

class TestMetadata < TestHelper
    def test_metadata
        errors = JSON::Validator.fully_validate('metadata.json', @@example + 'metadata.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
