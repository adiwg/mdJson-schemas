require 'helper.rb'

class TestVoucher < TestHelper
    def test_voucher
        errors = JSON::Validator.fully_validate('taxonomy.json', @@example + 'voucher.json', fragment:'#/definitions/voucher', strict: @@strict, list: true)
        assert(errors.empty?, errors.join("\n"))
    end
end
