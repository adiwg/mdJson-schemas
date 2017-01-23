require 'helper.rb'

class TestSpatialReference < TestHelper
    def test_spatialReference
        errors = JSON::Validator.fully_validate('spatialReference.json', @@example + 'spatialReference.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
