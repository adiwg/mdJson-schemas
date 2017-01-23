require 'helper.rb'

class TestSource < TestHelper
    def test_source
        errors = JSON::Validator.fully_validate('lineage.json', @@example + 'source.json', :fragment => "#/definitions/source", strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
