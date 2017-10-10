# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "words_with_kris/version"

Gem::Specification.new do |spec|
  spec.name          = "words_with_kris"
  spec.version       = WordsWithKris::VERSION
  spec.authors       = ["Kris Gray"]
  spec.email         = ["kris.m.gray@gmail.com"]

  spec.summary       = "this is a practice Gem"
  spec.homepage      = "https://github.com/krismgray/open_source_practice"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
