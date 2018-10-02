require 'helper.rb'

class TestReferenceSystemParameterSet < TestHelper
    def test_referenceSystemParameterSet
        errors = JSON::Validator.fully_validate('referenceSystemParameterSet.json', @@example + 'referenceSystemParameterSet.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
