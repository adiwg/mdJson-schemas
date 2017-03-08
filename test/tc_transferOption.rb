require 'helper.rb'

class TestTransferOption < TestHelper
    def test_transferOption
        errors = JSON::Validator.fully_validate('transferOption.json', @@example + 'transferOption.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
