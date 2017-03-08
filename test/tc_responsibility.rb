require 'helper.rb'

class TestResponsibility < TestHelper
    def test_responsibility
        errors = JSON::Validator.fully_validate('responsibility.json', @@example + 'responsibleParty.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
