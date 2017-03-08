require 'helper.rb'

class TestCitation < TestHelper
    def test_citation
        errors = JSON::Validator.fully_validate('citation.json', @@example + 'citation.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
