# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adiwg/mdjson_schemas/version'

Gem::Specification.new do |spec|
  spec.name          = "adiwg-mdjson_schemas"
  spec.version       = ADIWG::MdjsonSchemas::VERSION
  spec.authors       = ["Josh Bradley, Stan Smith"]
  spec.email         = ["adiwg@adiwg.org"]
  spec.description   = %q{JSON schemas for validating according to the the ADIwg project and data metadata standard. The schemas comply with JSON Schema draft version 4.}
  spec.summary       = %q{JSON schemas for the ADIwg metadata standard}
  spec.homepage      = "https://github.com/adiwg/mdJson-schemas"
  spec.license       = "UNLICENSE"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features|)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", ">= 0"
  spec.add_development_dependency "json-schema", "~> 2.4.0"
  spec.add_development_dependency "minitest", "~>5"
end
