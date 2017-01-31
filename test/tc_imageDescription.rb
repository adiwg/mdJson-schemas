require 'helper.rb'

class TestImageDescription < TestHelper
    def test_imageDescription
        errors = JSON::Validator.fully_validate('imageDescription.json', @@example + 'imageDescription.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
