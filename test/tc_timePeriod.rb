require 'helper.rb'

class TestTimePeriod < TestHelper
    def test_timePeriod
        errors = JSON::Validator.fully_validate('timePeriod.json', @@example + 'timePeriod.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
    def test_timeInterval
        errors = JSON::Validator.fully_validate('timePeriod.json', @@example + 'timeInterval.json', fragment: '#/definitions/timeInterval', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
