require 'helper.rb'

class TestGeodetic < TestHelper
    def test_geodetic
        errors = JSON::Validator.fully_validate('geodetic.json', @@example + 'geodetic.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
