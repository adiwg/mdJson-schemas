require 'helper.rb'

class TestTemporalExtent < TestHelper
    def test_temporalExtent
        errors = JSON::Validator.fully_validate('temporalExtent.json', @@example + 'temporalExtent.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
