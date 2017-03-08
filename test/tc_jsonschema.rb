require 'helper.rb'

class TestSchema < TestHelper
  def test_schemas
    # Validate the schemas themselves
    schemas = `git ls-files #{@@dir}/schema`.split($/)
    errors = []

    schemas.each do |schema|
      error = JSON::Validator.fully_validate(File.join(File.dirname(__FILE__), 'draft-04.json'), schema)
      errors += error
    end

    assert(errors.empty?, errors.join("\n"))
  end
end
