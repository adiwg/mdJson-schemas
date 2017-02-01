require 'helper.rb'

class TestDistributor < TestHelper
    def test_distributor
        errors = JSON::Validator.fully_validate('distributor.json', @@example + 'distributor.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
