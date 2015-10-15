# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'genial/version'

Gem::Specification.new do |spec|
  spec.name          = "genial"
  spec.version       = Genial::VERSION
  spec.authors       = ["Renan Gurgel"]
  spec.email         = ["gurgel.renan@gmail.com"]

  spec.summary       = %q{Mostra a cotação de algumas moedas em Real(R$).}
  spec.description   = %q{Mostra a cotação de algumas moedas em Real(R$) com base nos dados do Banco Central.}
  spec.homepage      = "https://github.com/gurgelrenan/genial"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "httparty", "~> 0.13.7"
end
