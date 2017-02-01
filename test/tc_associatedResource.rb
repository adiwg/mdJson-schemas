require 'helper.rb'

class TestAssociatedResource < TestHelper
    def test_associatedResource
        errors = JSON::Validator.fully_validate('associatedResource.json', @@example + 'associatedResource.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
