require 'helper.rb'

class TestOrderProcess < TestHelper
    def test_orderProcess
        errors = JSON::Validator.fully_validate('orderProcess.json', @@example + 'orderProcess.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
