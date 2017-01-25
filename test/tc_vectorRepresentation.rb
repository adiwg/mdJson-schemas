require 'helper.rb'

class TestVectorRepresentation < TestHelper
    def test_vectorRepresentation
        errors = JSON::Validator.fully_validate('vectorRepresentation.json', @@example + 'vectorRepresentation.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end

    def test_vectorObject
        errors = JSON::Validator.fully_validate('vectorRepresentation.json', @@example + 'vectorObject.json', fragment:'#/definitions/vectorObject', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
