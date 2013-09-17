$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "link_to_social/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "link_to_social"
  s.version     = LinkToSocial::VERSION
  s.authors     = ["Zach Feldman"]
  s.email       = ["zachfeldman@gmail.com"]
  s.homepage    = "http://github.com/zachfeldman/link_to_social"
  s.summary     = "Social link_to helper for Rails."
  s.description = "Easily create sharing links for all of the major social networks using a simple link_to_social tag."
  s.license     = 'GPL-3'

  s.files = Dir["{app,config,db,lib}/**/*", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
end
