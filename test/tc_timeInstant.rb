require 'helper.rb'

class TestTimeInstant < TestHelper
    def test_timeInstant
        errors = JSON::Validator.fully_validate('timeInstant.json', @@example + 'timeInstant.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
