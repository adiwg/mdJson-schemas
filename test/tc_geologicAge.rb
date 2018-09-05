require 'helper.rb'

class TestGeologicAge < TestHelper
    def test_geologicAge
        errors = JSON::Validator.fully_validate('geologicAge.json', @@example + 'geologicAge.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
