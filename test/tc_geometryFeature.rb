require 'helper.rb'

class TestGeometryFeature < TestHelper
    def test_geometryFeature
        errors = JSON::Validator.fully_validate('geojson.json', @@example + 'geometryFeature.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
