require 'helper.rb'

class TestGeometryObject < TestHelper
    def test_geometryObject
        errors = JSON::Validator.fully_validate('geometry.json', @@example + 'geometryObject.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
