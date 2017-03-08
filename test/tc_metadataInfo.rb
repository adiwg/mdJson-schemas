require 'helper.rb'

class TestMetadataInfo < TestHelper
    def test_metadataInfo
        errors = JSON::Validator.fully_validate('metadataInfo.json', @@example + 'metadataInfo.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
