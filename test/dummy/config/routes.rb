Rails.application.routes.draw do
  mount GraphqlPlayground::Rails::Engine => "/graphql_playground-rails"
end
