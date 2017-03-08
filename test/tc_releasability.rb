require 'helper.rb'

class TestReleasability < TestHelper
    def test_releasability
        errors = JSON::Validator.fully_validate('releasability.json', @@example + 'releasability.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
