[![Build Status](https://travis-ci.org/adiwg/mdJson-schemas.svg?branch=master)](https://travis-ci.org/adiwg/mdJson-schemas)
[![Gem Version](https://badge.fury.io/rb/adiwg-mdjson_schemas.svg)](http://badge.fury.io/rb/adiwg-mdjson_schemas)
[![Bower version](https://badge.fury.io/bo/mdjson-schemas.svg)](https://badge.fury.io/bo/mdjson-schemas)
[![npm version](https://badge.fury.io/js/mdjson-schemas.svg)](https://badge.fury.io/js/mdjson-schemas)

# mdJson-schemas

JSON schemas for the ADIwg project and data metadata standard

## Ruby Gem

Use with [ruby-json-schema/json-schema](https://github.com/ruby-json-schema/json-schema) to validate mdJSON records in Ruby.

### Installation

Add this line to your application's Gemfile:

    gem 'adiwg-mdjson_schemas'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adiwg-mdjson_schemas

## npm

Install:

    $ npm install mdjson-schemas

    const Schemas = require('../resources/js/schemas.js');

### Usage

The main schema file is `schema/schema.json`. Load that file in your [validator](http://json-schema.org/implementations.html#libraries).

**NOTE**: The schemas use relative addresses for `$ref` paths. If this causes a problem
with the [ruby-json-schema/json-schema](https://github.com/ruby-json-schema/json-schema) gem,
as a workaround you can pre-load all of the schemas by calling `ADIWG::MdjsonSchemas::Utils::load_schemas` before validation.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Ignore anything below this line

Just making changes to make changes to something. Trying to resolve merge conflicts.
