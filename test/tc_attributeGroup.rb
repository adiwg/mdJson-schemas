require 'helper.rb'

class TestAttributeGroup < TestHelper
    def test_attributeGroup
        errors = JSON::Validator.fully_validate('attributeGroup.json', @@example + 'attributeGroup.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
