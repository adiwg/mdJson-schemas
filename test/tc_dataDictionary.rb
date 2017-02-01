require 'helper.rb'

class TestDataDictionary < TestHelper
    def test_dataDictionary
        errors = JSON::Validator.fully_validate('dataDictionary.json', @@example + 'dictionary.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
