require 'helper.rb'

class TestLegalConstraint < TestHelper
    def test_legalConstraint
        errors = JSON::Validator.fully_validate('constraint.json', @@example + 'legalConstraint.json', fragment: '#/definitions/legalConstraint', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
