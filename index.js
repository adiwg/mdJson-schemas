'use strict';

const glob = require('glob');
const path = require('path');
const all = {};

glob.sync('./resources/js/!(schemas).js').forEach(function(file) {
  const obj = require(path.resolve(file));
  const name = path.basename(file, '.js');

  all[name] = obj;
});

module.exports = exports = all;
