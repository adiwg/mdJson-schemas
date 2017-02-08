require 'helper.rb'

class TestLocale < TestHelper
    def test_locale
        errors = JSON::Validator.fully_validate('locale.json', @@example + 'locale.json', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
