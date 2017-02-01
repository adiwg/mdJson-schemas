require 'helper.rb'

class TestUsage < TestHelper
    def test_usage
        errors = JSON::Validator.fully_validate('usage.json', @@example + 'usage.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
