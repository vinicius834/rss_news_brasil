# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rss_news_brasil/version'

Gem::Specification.new do |spec|
  spec.name          = "rss_news_brasil"
  spec.version       = RssNewsBrasil::VERSION
  spec.authors       = ["vinicius834"]
  spec.email         = ["vinicius834@gmail.com"]

  spec.summary       = "Simple gem to get news links from Brazilians News WebSites feeds"
  spec.description   = "Simple gem to get news links from Brazilians News WebSites feeds"
  spec.homepage      = ""


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.test_files = Dir["test/**/*"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8", '>= 5.8.3'
  spec.license = 'MIT'
end
