require 'helper.rb'
require 'adiwg-mdcodes'

class TestProjection < TestHelper
    def test_projection
        errors = JSON::Validator.fully_validate('projection.json', @@example + 'projection.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end

    def test_mapProjection
        codes = ADIWG::Mdcodes::getCodelistDetail('adiwg_mapProjection')["codelist"]
        data = codes.map do |c|
            {:projectionIdentifier => {:identifier => c["code"], :namespace => "org.adiwg.code.mapProjection"}}
        end
        errors = JSON::Validator.fully_validate('projection.json', data, strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end

    def test_mapGridSystem
        codes = ADIWG::Mdcodes::getCodelistDetail('adiwg_mapGridSystem')["codelist"]
        data = codes.map do |c|
            {:gridIdentifier => {:identifier => c["code"], :namespace => "org.adiwg.code.mapGridSystem"}, :projectionIdentifier => {:identifier => "identifier"}}
        end
        errors = JSON::Validator.fully_validate('projection.json', data, strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
