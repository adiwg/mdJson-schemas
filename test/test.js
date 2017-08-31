const assert = require('assert');
const fs = require('fs');
const Schemas = require('../index.js');
const schemaFolder = '../schema/';

describe('Test schemas:', function() {

  describe('Schemas', function() {
    it('should return an object', function() {
      assert.ok(Schemas === Object(Schemas));
    });
  });

  describe('All schemas present', function() {
    it('should return ok', function() {
      fs.readdirSync(__dirname + '/' + schemaFolder).forEach(file => {
        let schema = Schemas[file.split('.')[0]];

        assert.ok(schema === Object(schema));
      });
    });
  });

  describe('ajv', function() {

    const Ajv = require('ajv');
    const data = require('../examples/mdJson.json');
    const ajv = new Ajv({
      extendRefs: 'fail'
    });

    it('should load all schemas', function() {

      ajv.addMetaSchema(require('ajv/lib/refs/json-schema-draft-04.json'));

      Object.keys(Schemas).forEach(function(key) {
        let val = Schemas[key];

        ajv.addSchema(val, key);
      });
    });

    it('should validate example', function() {
      ajv.validate('schema', data);
      assert.equal(ajv.errors, null);
    });
  });

});
