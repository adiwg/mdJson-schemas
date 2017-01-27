require 'helper.rb'

class TestGeographicElement < TestHelper
    def test_geographicElement
        errors = JSON::Validator.fully_validate('geographicExtent.json', @@example + 'geoJson.json', fragment:'#/definitions/geographicElement', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
    def test_geoJson
        errors = JSON::Validator.fully_validate('geojson.json', @@example + 'geoJson.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
