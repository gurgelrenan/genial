# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'genial/version'

Gem::Specification.new do |spec|
  spec.name          = "genial"
  spec.version       = Genial::VERSION
  spec.authors       = ["Renan Gurgel"]
  spec.email         = ["gurgel.renan@gmail.com"]

  spec.summary       = %q{Métodos rotineiros do dia-a-dia}
  spec.description   = %q{Algumas funções comuns no dia-a-dia do desenvolvimento}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
