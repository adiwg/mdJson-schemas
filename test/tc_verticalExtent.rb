require 'helper.rb'

class TestVerticalExtent < TestHelper
    def test_verticalExtent
        errors = JSON::Validator.fully_validate('verticalExtent.json', @@example + 'verticalExtent.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
