require 'helper.rb'

class Testphone < TestHelper
    def test_phone
        errors = JSON::Validator.fully_validate('contact.json', @@example + 'phone.json', fragment: '#/definitions/phone', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
