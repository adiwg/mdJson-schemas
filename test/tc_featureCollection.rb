require 'helper.rb'

class TestFeatureCollection < TestHelper
    def test_featureCollection
        errors = JSON::Validator.fully_validate('geojson.json', @@example + 'featureCollection.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
