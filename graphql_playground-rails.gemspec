$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "graphql_playground/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "graphql_playground-rails"
  s.version     = GraphqlPlayground::Rails::VERSION
  s.authors     = ["Ethan Apodaca"]
  s.email       = ["papodaca@gmail.com"]
  s.homepage    = "https://github.com/papodaca/graphql_playground-rails"
  s.summary     = "An engine to provide the GraphQL Playground"
  s.description = "GraphQL Playground provides a UI similar to GraphiQL with more features"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1", ">= 5.1.0"
end
