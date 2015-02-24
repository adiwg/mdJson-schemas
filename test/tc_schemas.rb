=begin
* Description: Test Validation of examples schemas and templates
* Author: Josh Bradley, Stan Smith
* Date: 2014-05-02
* License: Public Domain
=end

require 'minitest/autorun'
require 'json'
require 'json-schema'
require File.join(File.dirname(__FILE__),'..','lib', 'adiwg-mdjson_schemas.rb')

#json-schema patch
require File.join(File.dirname(__FILE__),'..','lib', 'adiwg', 'mdjson_schemas', 'validator.rb')

class TestExamples < Minitest::Test

  @@dir = File.join(File.dirname(__FILE__),'..','schema/')
  @@ex = File.join(File.dirname(__FILE__),'..','examples/')
  @@schema = File.join(File.dirname(__FILE__),'..','schema','schema.json')

  def test_schemas
    #Validate the schemas themselves
    #puts "\nValidating schemas, Please wait... \n"
    schemas = `git ls-files #{@@dir}`.split($/)
    errors = Array.new

    schemas.each do |schema|
      error = JSON::Validator.fully_validate(File.join(File.dirname(__FILE__), 'draft-04.json'), schema)
      errors += error
    end

    assert(errors.empty?, errors.join("\n"))
  end

  def test_data_template
    errors = JSON::Validator.fully_validate(@@schema, @@dir + '../templates/mdJson_template.json', :strict => false)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_full_example
    errors = JSON::Validator.fully_validate(@@schema , @@ex + 'full_example.json')
    assert(errors.empty?, errors.join("\n"))
  end

  def test_full_example2
    errors = JSON::Validator.fully_validate(@@schema , @@ex + 'full_example2.json')
    assert(errors.empty?, errors.join("\n"))
  end

  def test_minimum_example
    errors = JSON::Validator.fully_validate(@@schema , @@ex + 'minimum_example.json')
    assert(errors.empty?, errors.join("\n"))
  end

  def test_lcc_example
    errors = JSON::Validator.fully_validate(@@schema , @@ex + 'lcc_project_example.json')
    assert(errors.empty?, errors.join("\n"))
  end

  def test_contact
    errors = JSON::Validator.fully_validate(@@dir + 'schema/contact.json', @@ex + 'contact.json')
    assert(errors.empty?, errors.join("\n"))
  end

  def test_citation
    errors = JSON::Validator.fully_validate(@@dir + 'schema/citation.json', @@ex + 'citation.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_dictionary
    errors = JSON::Validator.fully_validate(@@dir + 'schema/dataDictionary.json', @@ex + 'dataDictionary.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_taxonomy
    errors = JSON::Validator.fully_validate(@@dir + 'schema/taxonomy.json', @@ex + 'taxonomy.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_usage
    errors = JSON::Validator.fully_validate(@@dir + 'schema/usage.json', @@ex + 'usage.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_resolution
    errors = JSON::Validator.fully_validate(@@dir + 'schema/resolution.json', @@ex + 'resolution.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_graphicOverview
    errors = JSON::Validator.fully_validate(@@dir + 'schema/graphicOverview.json', @@ex + 'graphicOverview.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_resourceInfo
    errors = JSON::Validator.fully_validate(@@dir + 'schema/resourceInfo.json', @@ex + 'resourceInfo.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_metadataInfo
    errors = JSON::Validator.fully_validate(@@dir + 'schema/metadata.json', @@ex + 'metadataInfo.json', :fragment => "#/properties/metadataInfo", :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_onlineResource
    errors = JSON::Validator.fully_validate(@@dir + 'schema/onlineResource.json', @@ex + 'onlineResource.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_resourceConstraint
    errors = JSON::Validator.fully_validate(@@dir + 'schema/resourceConstraint.json', @@ex + 'legalConstraints.json', :fragment => "#/definitions/legalConstraint", :list => true)
    assert(errors.empty?, errors.join("\n"))

    errors = JSON::Validator.fully_validate(@@dir + 'schema/resourceConstraint.json', @@ex + 'securityConstraints.json', :fragment => "#/definitions/securityConstraint", :list => true)
    assert(errors.empty?, errors.join("\n"))

    errors = JSON::Validator.fully_validate(@@dir + 'schema/resourceConstraint.json', ["not for suitable for navigation", "draft version", "not intended for general use"], :fragment => "#/definitions/useLimitation", :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_date
    errors = JSON::Validator.fully_validate(@@schema, @@ex + 'date.json', :fragment => "#/definitions/date", :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_spatialRef
    errors = JSON::Validator.fully_validate(@@dir + 'schema/resourceInfo.json', @@ex + 'spatialRef.json', :fragment => "#/properties/spatialReferenceSystem", :list => false)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_contactRef
    errors = JSON::Validator.fully_validate(@@dir + 'schema/contact.json', @@ex + 'contactRef.json', :fragment => "#/definitions/contactRef", :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_keywords
    errors = JSON::Validator.fully_validate(@@dir + 'schema/keyword.json', @@ex + 'keywords.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_distributor
    errors = JSON::Validator.fully_validate(@@dir + 'schema/distributor.json', @@ex + 'distributor.json', :list => true)
    assert(errors.empty?, errors.join("\n"))

    errors = JSON::Validator.fully_validate(@@dir + 'schema/distributor.json', @@ex + 'format.json', :fragment => "#/definitions/format", :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_geojson
    errors = JSON::Validator.fully_validate(@@dir + 'schema/geojson/geojson.json', @@ex + 'geojson.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_extent_linestring
    errors = JSON::Validator.fully_validate(@@dir + 'schema/extent.json', @@ex + 'extent_linestring.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_extent_point
    errors = JSON::Validator.fully_validate(@@dir + 'schema/extent.json', @@ex + 'extent_point.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_extent_polygon
    errors = JSON::Validator.fully_validate(@@dir + 'schema/extent.json', @@ex + 'extent_polygon.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_extent_temporal
    errors = JSON::Validator.fully_validate(@@dir + 'schema/extent.json', @@ex + 'temporalElement.json', :fragment => "#/definitions/temporalElement", :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_extent_vertical
    errors = JSON::Validator.fully_validate(@@dir + 'schema/extent.json', @@ex + 'verticalExtent.json', :fragment => "#/definitions/verticalExtent", :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_maintInfo
    errors = JSON::Validator.fully_validate(@@dir + 'schema/maintInfo.json', @@ex + 'maintInfo.json', :list => true)
    errors = errors + JSON::Validator.fully_validate(@@dir + 'schema/maintInfo.json', @@ex + 'resourceMaintenance.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_dataQuality
    errors = JSON::Validator.fully_validate(@@dir + 'schema/dataQuality.json', @@ex + 'dataQuality.json', :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_uri
    errors = JSON::Validator.fully_validate(@@schema, @@ex + 'uri.json', :fragment => "#/definitions/uri",  :list => true)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_additionalDocumentation
    errors = JSON::Validator.fully_validate(@@dir + 'schema/metadata.json', @@ex + 'additionalDocumentation.json', :fragment => "#/properties/additionalDocumentation", :list => false)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_associatedResource
    errors = JSON::Validator.fully_validate(@@dir + 'schema/metadata.json', @@ex + 'associatedResource.json', :fragment => "#/properties/associatedResource", :list => false)
    assert(errors.empty?, errors.join("\n"))
  end

  def test_address
    errors = JSON::Validator.fully_validate(@@dir + 'schema/contact.json', @@ex + 'address.json', :fragment => "#/definitions/address", :list => true)
    assert(errors.empty?, errors.join("\n"))
  end
end
