require 'helper.rb'

class TestTaxonomicSystem < TestHelper
    def test_taxonomicSystem
        errors = JSON::Validator.fully_validate('taxonomy.json', @@example + 'taxonomicSystem.json', fragment:'#/definitions/taxonomicSystem', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
