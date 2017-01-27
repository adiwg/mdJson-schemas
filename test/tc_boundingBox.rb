require 'helper.rb'

class TestBoundingBox < TestHelper
    def test_boundingBox
        errors = JSON::Validator.fully_validate('geographicExtent.json', @@example + 'boundingBox.json', fragment:'#/definitions/boundingBox', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
