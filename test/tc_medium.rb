require 'helper.rb'

class TestMedium < TestHelper
    def test_medium
        errors = JSON::Validator.fully_validate('medium.json', @@example + 'medium.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
