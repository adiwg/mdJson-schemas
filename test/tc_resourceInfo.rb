require 'helper.rb'

class TestResourceInfo < TestHelper
    def test_resourceInfo
        errors = JSON::Validator.fully_validate('resourceInfo.json', @@example + 'resourceInfo.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
