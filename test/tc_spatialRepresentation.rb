require 'helper.rb'

class TestSpatialRepresentation < TestHelper
    def test_spatialRepresentation
        errors = JSON::Validator.fully_validate('spatialRepresentation.json', @@example + 'spatialRepresentation.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
