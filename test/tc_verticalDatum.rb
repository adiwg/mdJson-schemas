require 'helper.rb'

class TestVerticalDatum < TestHelper
    def test_verticalDatum
        errors = JSON::Validator.fully_validate('verticalDatum.json', @@example + 'verticalDatum.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
