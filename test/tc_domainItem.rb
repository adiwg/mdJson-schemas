require 'helper.rb'

class TestDomainItem < TestHelper
    def test_domain
        errors = JSON::Validator.fully_validate('domain.json', @@example + 'domainItem.json', fragment: '#/definitions/domainItem', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
