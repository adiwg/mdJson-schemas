require 'helper.rb'

class TestDuration < TestHelper
    def test_duration
        errors = JSON::Validator.fully_validate('timePeriod.json', @@example + 'duration.json', :fragment => "#/definitions/duration", strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
