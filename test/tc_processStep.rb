require 'helper.rb'

class TestProcessStep < TestHelper
    def test_processStep
        errors = JSON::Validator.fully_validate('lineage.json', @@example + 'processStep.json', :fragment => "#/definitions/processStep", strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
