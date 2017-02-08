require 'helper.rb'

class Testallocation < TestHelper
    def test_allocation
        errors = JSON::Validator.fully_validate('funding.json', @@example + 'allocation.json',fragment: '#/definitions/allocation' , strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
