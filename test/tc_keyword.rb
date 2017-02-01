require 'helper.rb'

class TestKeyword < TestHelper
    def test_keyword
        errors = JSON::Validator.fully_validate('keyword.json', @@example + 'keyword.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
