require 'helper.rb'

class TestMeasure < TestHelper
    def test_measure
        errors = JSON::Validator.fully_validate('measure.json', @@example + 'measure.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
