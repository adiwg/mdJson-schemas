require 'helper.rb'

class TestDistribution < TestHelper
    def test_distribution
        errors = JSON::Validator.fully_validate('distribution.json', @@example + 'distribution.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
