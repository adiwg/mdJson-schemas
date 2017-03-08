require 'helper.rb'

class TestMaintInfo < TestHelper
    def test_maintInfo
        errors = JSON::Validator.fully_validate('maintInfo.json', @@example + 'maintenance.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
