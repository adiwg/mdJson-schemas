#!/usr/bin/env node

'use strict';

let fs = require('fs');
let buildify = require('buildify');
let rimraf = require('rimraf');
let mkdirp = require('mkdirp');
let all = require('../index.js');
let path = 'resources/js';

if(fs.existsSync(path)) {
  rimraf.sync(path);
  console.log('Removed existing resources/js files.');
}
mkdirp.sync(path);

console.log('Created resources/js');

let files = fs.readdirSync('schema');

for(let file of files) {
  let name = path + '/' + file.split('.')[0] + '.js';

  buildify()
    .load('schema/' + file)
    .perform(function(content) {
      return 'module.exports = ' + content + ';';
    })
    .save(name);
  //console.log('Created ' + name);
}

buildify()
  .setContent(JSON.stringify(all))
  .perform(function(content) {
    return 'module.exports = ' + content + ';';
  })
  .save(path + '/' +'schemas.js');

process.exit();
