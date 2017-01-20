require 'helper.rb'

class TestScope < TestHelper
    def test_scope
        errors = JSON::Validator.fully_validate('scope.json', @@example + 'scope.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
