require 'helper.rb'

class TestSpatialResolution < TestHelper
    def test_spatialResolution
        errors = JSON::Validator.fully_validate('spatialResolution.json', @@example + 'spatialResolution.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("
"))
    end
end
