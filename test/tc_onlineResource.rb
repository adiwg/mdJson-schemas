require 'helper.rb'

class TestOnlineResource < TestHelper
    def test_online_resource
        errors = JSON::Validator.fully_validate('onlineResource.json', @@example + 'onlineResource.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
