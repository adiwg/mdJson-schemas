require 'helper.rb'

class TestSeries < TestHelper
    def TestSeries
        errors = JSON::Validator.fully_validate('citation.json', @@example + 'series.json', fragment: '#/definitions/series', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
