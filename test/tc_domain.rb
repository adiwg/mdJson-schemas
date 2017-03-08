require 'helper.rb'

class TestDomain < TestHelper
    def test_domain
        errors = JSON::Validator.fully_validate('domain.json', @@example + 'domain.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
