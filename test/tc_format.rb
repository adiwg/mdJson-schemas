require 'helper.rb'

class TestFormat < TestHelper
    def test_format
        errors = JSON::Validator.fully_validate('format.json', @@example + 'format.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
