# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Alex Matchneer"]
  gem.email         = ["machty@gmail.com"]
  gem.description   = %q{Emblem.js precompilation}
  gem.summary       = %q{Emblem.js precompilation toolkit}
  gem.homepage      = "https://www.emblemjs.com"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "barber-emblem"
  gem.require_paths = ["lib"]
  gem.version       = "0.1.5"

  gem.add_dependency "barber"
  gem.add_dependency "emblem", ">= 0.1.5"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "mocha"
end
