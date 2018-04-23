$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "graphql_playground/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "graphql_playground-rails"
  s.version     = GraphqlPlayground::Rails::VERSION
  s.authors     = ["Ethan Apodaca"]
  s.email       = ["papodaca@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of GraphqlPlayground::Rails."
  s.description = "TODO: Description of GraphqlPlayground::Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
end
