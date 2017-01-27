require 'helper.rb'

class TestGeometryCollection < TestHelper
    def test_geometryCollection
        errors = JSON::Validator.fully_validate('geojson.json', @@example + 'geometryCollection.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
