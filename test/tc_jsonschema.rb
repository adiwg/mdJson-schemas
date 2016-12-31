require "helper.rb"

class TestSchema < TestHelper
  def test_schemas
    #Validate the schemas themselves
    #puts "\nValidating schemas, Please wait... \n"
    schemas = `git ls-files #{@@dir}`.split($/)
    errors = Array.new

    #sschema = JSON::Schema.new('{}', Addressable::URI.parse('graphicOverview.json'))
    #JSON::Validator.add_schema(sschema)

    schemas.each do |schema|
      error = JSON::Validator.fully_validate(File.join(File.dirname(__FILE__), 'draft-04.json'), schema)
      errors += error
    end

    assert(errors.empty?, errors.join("\n"))
  end
end
