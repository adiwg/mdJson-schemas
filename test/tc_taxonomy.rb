require 'helper.rb'

class TestTaxonomy < TestHelper
    def test_taxonomy
        errors = JSON::Validator.fully_validate('taxonomy.json', @@example + 'taxonomy.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
