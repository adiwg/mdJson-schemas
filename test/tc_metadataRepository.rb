require 'helper.rb'

class TestmetadataRepository < TestHelper
    def test_MetadataRepository
        errors = JSON::Validator.fully_validate('metadataRepository.json', @@example + 'metadataRepository.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
