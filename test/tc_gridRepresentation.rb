require 'helper.rb'

class TestGridRepresentation < TestHelper
    def test_gridRepresentation
        errors = JSON::Validator.fully_validate('gridRepresentation.json', @@example + 'gridRepresentation.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
