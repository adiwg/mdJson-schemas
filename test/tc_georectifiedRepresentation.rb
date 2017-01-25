require 'helper.rb'

class TestGeorectifiedRepresentation < TestHelper
    def test_georectifiedRepresentation
        errors = JSON::Validator.fully_validate('georectifiedRepresentation.json', @@example + 'georectifiedRepresentation.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
