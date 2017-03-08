require 'helper.rb'

class TestFeatureProperties < TestHelper
    def test_featureProperties
        errors = JSON::Validator.fully_validate('geojson.json', @@example + 'featureProperties.json', fragment:'#/definitions/featureProperties', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
