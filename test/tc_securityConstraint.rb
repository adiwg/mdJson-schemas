require 'helper.rb'

class TestSecurityConstraint < TestHelper
    def test_securityConstraint
        errors = JSON::Validator.fully_validate('constraint.json', @@example + 'securityConstraint.json', fragment: '#/definitions/securityConstraint', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
