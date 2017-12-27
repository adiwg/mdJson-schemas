require 'helper.rb'

class TestEntityAttribute < TestHelper
    def test_attribute
        errors = JSON::Validator.fully_validate('entityAttribute.json', @@example + 'entityAttribute.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
    def test_valueRange
        errors = JSON::Validator.fully_validate('entityAttribute.json', @@example + 'valueRange.json', fragment:'#/definitions/valueRange', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
