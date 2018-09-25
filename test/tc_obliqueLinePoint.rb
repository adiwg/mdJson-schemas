require 'helper.rb'

class TestObliqueLinePoint < TestHelper
    def test_oblique_line_point
        errors = JSON::Validator.fully_validate('projection.json', @@example + 'obliqueLinePoint.json', fragment: "#/definitions/obliqueLinePoint", strict: @@strict, list: false)
        assert(errors.empty?, errors.join("\n"))
    end
end
