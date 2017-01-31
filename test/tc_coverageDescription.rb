require 'helper.rb'

class TestCoverageDescription < TestHelper
    def test_coverageDescription
        errors = JSON::Validator.fully_validate('coverageDescription.json', @@example + 'coverageDescription.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
