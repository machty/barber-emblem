# -*- encoding: utf-8 -*-
require File.expand_path('../lib/barber/emblem/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alex Matchneer"]
  gem.email         = ["machty@gmail.com"]
  gem.description   = %q{Emblem.js precompilation}
  gem.summary       = %q{Emblem.js precompilation toolkit}
  gem.homepage      = "https://github.com/machty/barber-emblem"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "barber-emblem"
  gem.require_paths = ["lib"]
  gem.version       = Barber::Emblem::VERSION

  gem.add_dependency "barber", ">= 0.4.1"
  gem.add_dependency "emblem-source"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "mocha"
  gem.add_development_dependency "appraisal"
end
