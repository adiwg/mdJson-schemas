require 'helper.rb'

class TestLineage < TestHelper
    def test_lineage
        errors = JSON::Validator.fully_validate('lineage.json', @@example + 'lineage.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
