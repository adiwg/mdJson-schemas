require 'helper.rb'

class TestURI < TestHelper
    def test_uri
        errors = JSON::Validator.fully_validate('common.json', @@example + 'uri.json', fragment: '#/definitions/uri', strict: @@strict, list: true)
        assert(errors.empty?, errors.join('n'))
    end
end
