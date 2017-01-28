require 'helper.rb'

class TestExtent < TestHelper
    def test_extent
        errors = JSON::Validator.fully_validate('extent.json', @@example + 'extent.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
