require 'helper.rb'

class TestDate < TestHelper
    def test_date
        errors = JSON::Validator.fully_validate('common.json', @@example + 'date.json', fragment: '#/definitions/date', strict: @@strict, list: true)
        assert(errors.empty?, errors.join('n'))
    end
    def test_dateObject
        errors = JSON::Validator.fully_validate('common.json', @@example + 'dateObject.json', fragment: '#/definitions/dateObject', strict: @@strict, list: true)
        assert(errors.empty?, errors.join('n'))
    end
end
