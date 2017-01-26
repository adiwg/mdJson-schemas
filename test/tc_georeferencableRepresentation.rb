require 'helper.rb'

class TestGeoreferencableRepresentation < TestHelper
    def test_georeferencableRepresentation
        errors = JSON::Validator.fully_validate('georeferencableRepresentation.json', @@example + 'georeferencableRepresentation.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
