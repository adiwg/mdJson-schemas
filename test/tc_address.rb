require 'helper.rb'

class TestAddress < TestHelper
    def test_address
        errors = JSON::Validator.fully_validate('contact.json', @@example + 'address.json', :fragment => "#/definitions/address", strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
