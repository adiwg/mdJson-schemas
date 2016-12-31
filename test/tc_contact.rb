require 'helper.rb'

class TestContact < TestHelper
    def test_contact
        errors = JSON::Validator.fully_validate('contact.json', @@example + 'contact.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
