$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "desif_abrasf/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "desif_abrasf"
  s.version     = DesifAbrasf::VERSION
  s.authors     = ["Marco Moura"]
  s.email       = ["marco.moura@gmail.com"]
  # s.homepage    = "TODO"
  s.summary     = "DesifAbrasf tables."
  s.description = "Tables of DES-IF are: Service item"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
end
