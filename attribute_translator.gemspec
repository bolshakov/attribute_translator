# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "attribute_translator/version"

Gem::Specification.new do |s|
  s.name        = "attribute_translator"
  s.version     = AttributeTranslator::VERSION
  s.authors     = ["Artyom Balashov"]
  # s.email       = [""]
  s.homepage    = "http://github.com/bolshakov/attribute_translator"
  s.summary     = %q{Translate model attribute values from locales}
  # s.description = %q{TODO: Write a gem description}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
