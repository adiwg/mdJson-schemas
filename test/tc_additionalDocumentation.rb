require 'helper.rb'

class TestAdditionalDocumentation < TestHelper
    def test_additionalDocumentation
        errors = JSON::Validator.fully_validate('additionalDocumentation.json', @@example + 'additionalDocumentation.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
