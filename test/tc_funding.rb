require 'helper.rb'

class TestFunding < TestHelper
    def test_funding
        errors = JSON::Validator.fully_validate('funding.json', @@example + 'funding.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
