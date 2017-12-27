require 'helper.rb'

class TestEntity < TestHelper
    def test_entity
        errors = JSON::Validator.fully_validate('entity.json', @@example + 'entity.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
    def test_index
        errors = JSON::Validator.fully_validate('entity.json', @@example + 'entityIndex.json', fragment:'#/definitions/index', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
    def test_foreignKey
        errors = JSON::Validator.fully_validate('entity.json', @@example + 'entityForeignKey.json', fragment:'#/definitions/foreignKey', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
