require 'helper.rb'

class TestGeoreferenceableRepresentation < TestHelper
    def test_georeferenceableRepresentation
        errors = JSON::Validator.fully_validate('georeferenceableRepresentation.json', @@example + 'georeferenceableRepresentation.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
