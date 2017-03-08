require 'helper.rb'

class TestAttribute < TestHelper
    def test_attribute
        errors = JSON::Validator.fully_validate('attribute.json', @@example + 'attribute.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
