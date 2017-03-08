require 'helper.rb'

class TestTaxonomicClassification < TestHelper
    def test_taxonomicClassification
        errors = JSON::Validator.fully_validate('taxonomy.json', @@example + 'taxonomicClassification.json', fragment:'#/definitions/taxonomicClassification', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
