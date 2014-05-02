=begin
* Description: Test Validation of examples schemas and templates
* Author: Josh Bradley, Stan Smith
* Date: 2013-08-23
* License: Public Domain
=end

require "test/unit"
require 'adiwg-json-schemas'
require 'json-schema'

class TestExamples < Test::Unit::TestCase

  @@data = '../examples/data_example.json'
  @@schema = '../schema/schema.json'
=begin  def test_example
    errors = JSON::Validator.fully_validate(@@schema, @@data)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_full
    errors = JSON::Validator.fully_validate(@@schema, '../examples/full_example.json')
    assert(errors.empty?, errors.join("/n"))
  end
=end
  def test_data_template
    errors = JSON::Validator.fully_validate(@@schema, '../templates/adiwg_metadata_template.json')
    assert(errors.empty?, errors.join("/n"))
  end

  def test_lcc_example
    errors = JSON::Validator.fully_validate('../schema/schema.json', '../examples/lcc_project_example.json')
    assert(errors.empty?, errors.join("/n"))
  end

  def test_contact
    errors = JSON::Validator.fully_validate('../schema/schema/contact.json', '../examples/contact.json')
    assert(errors.empty?, errors.join("/n"))
  end

  def test_citation
    errors = JSON::Validator.fully_validate('../schema/schema/citation.json', '../examples/citation.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_taxonomy
    errors = JSON::Validator.fully_validate('../schema/schema/taxonomy.json', '../examples/taxonomy.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_usage
    errors = JSON::Validator.fully_validate('../schema/schema/usage.json', '../examples/usage.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_resolution
    errors = JSON::Validator.fully_validate('../schema/schema/resolution.json', '../examples/resolution.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_graphicOverview
    errors = JSON::Validator.fully_validate('../schema/schema/graphicOverview.json', '../examples/graphicOverview.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_resourceInfo
    errors = JSON::Validator.fully_validate('../schema/schema/resourceInfo.json', '../examples/resourceInfo.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_onlineResource
    errors = JSON::Validator.fully_validate('../schema/schema/onlineResource.json', '../examples/onlineResource.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_resourceConstraint
    errors = JSON::Validator.fully_validate('../schema/schema/resourceConstraint.json', '../examples/resourceConstraints.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_date
    errors = JSON::Validator.fully_validate(@@schema, '../examples/date.json', :fragment => "#/definitions/date", :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_contactRef
    errors = JSON::Validator.fully_validate('../schema/schema/contact.json', '../examples/contactRef.json', :fragment => "#/definitions/contactRef", :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_keywords
    errors = JSON::Validator.fully_validate('../schema/schema/keyword.json', '../examples/keywords.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_distributor
    errors = JSON::Validator.fully_validate('../schema/schema/distributor.json', '../examples/distributor.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_geojson
    errors = JSON::Validator.fully_validate('../schema/schema/geojson/geojson.json', '../examples/geojson.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_extent_linestring
    errors = JSON::Validator.fully_validate('../schema/schema/extent.json', '../examples/extent_linestring.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_extent_point
    errors = JSON::Validator.fully_validate('../schema/schema/extent.json', '../examples/extent_point.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_extent_polygon
    errors = JSON::Validator.fully_validate('../schema/schema/extent.json', '../examples/extent_polygon.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_maintInfo
    errors = JSON::Validator.fully_validate('../schema/schema/maintInfo.json', '../examples/maintInfo.json', :list => true)
    errors = errors + JSON::Validator.fully_validate('../schema/schema/maintInfo.json', '../examples/resourceMaintenance.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end

  def test_dataQuality
    errors = JSON::Validator.fully_validate('../schema/schema/dataQuality.json', '../examples/dataQuality.json', :list => true)
    assert(errors.empty?, errors.join("/n"))
  end
end