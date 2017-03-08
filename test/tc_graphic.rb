require 'helper.rb'

class TestGraphic < TestHelper
    def test_graphic
        errors = JSON::Validator.fully_validate('graphic.json', @@example + 'graphic.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
