require 'helper.rb'

class Testidentifier < TestHelper
    def test_identifier
        errors = JSON::Validator.fully_validate('identifier.json', @@example + 'identifier.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
