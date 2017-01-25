require 'helper.rb'

class TestDimension < TestHelper
    def test_dimension
        errors = JSON::Validator.fully_validate('gridRepresentation.json', @@example + 'dimension.json', :fragment => "#/definitions/dimension", strict: @@strict, list: true)
        assert(errors.empty?, errors.join("
"))
    end
end
