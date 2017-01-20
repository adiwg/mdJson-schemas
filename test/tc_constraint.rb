require 'helper.rb'

class TestConstraint < TestHelper
    def test_constraint
        errors = JSON::Validator.fully_validate('constraint.json', @@example + 'constraint.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
