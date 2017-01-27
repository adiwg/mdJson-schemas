require 'helper.rb'

class TestGeographicExtent < TestHelper
    def test_geographicExtent
        errors = JSON::Validator.fully_validate('geographicExtent.json', @@example + 'geographicExtent.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
