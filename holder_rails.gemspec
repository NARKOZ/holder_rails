# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'holder_rails/version'

Gem::Specification.new do |gem|
  gem.name          = "holder_rails"
  gem.version       = HolderRails::VERSION
  gem.authors       = ["Nihad Abbasov"]
  gem.email         = ["mail@narkoz.me"]
  gem.description   = %q{Provides Holder.js to render image placeholders entirely on the client side}
  gem.summary       = %q{Holder.js for Rails 3.1 asset pipeline}
  gem.homepage      = "https://github.com/narkoz/holder_rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'railties',  '>= 3.1.0'
end
