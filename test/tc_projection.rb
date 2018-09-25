require 'helper.rb'

class TestProjection < TestHelper
    def test_projection
        errors = JSON::Validator.fully_validate('projection.json', @@example + 'projection.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
