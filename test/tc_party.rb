require 'helper.rb'

class TestParty < TestHelper
    def test_party
        errors = JSON::Validator.fully_validate('responsibility.json', @@example + 'party.json', strict: @@strict, list: false, :fragment => "#/properties/party")
        assert(errors.empty?, errors.join("\n"))
    end
end
