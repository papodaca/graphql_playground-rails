
[![Gem Version](https://badge.fury.io/rb/graphql_playground-rails.svg)](https://badge.fury.io/rb/graphql_playground-rails)
# GraphqlPlayground::Rails
A blatant copy of [GraphiQL::Rails](https://github.com/rmosolgo/graphiql-rails) with much less functionality but with [GraphQL Playground](https://github.com/graphcool/graphql-playground) instead.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'graphql_playground-rails'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install graphql_playground-rails
```

### Mount the Engine

Add the engine to `routes.rb`:

```ruby
# config/routes.rb
Rails.application.routes.draw do
  # ...
  if Rails.env.development?
    mount GraphqlPlayground::Rails::Engine, at: "/graphql_playground", graphql_path: "/your/endpoint"
  end
end
```

### Configure

```ruby
# config/initializers/graphql_playground.rb
# All config options have a default that sould work out of the box
GraphqlPlayground::Rails.configure do |config|
  config.headers = {
    'X-Auth-Header' => ->(view_context) { "123" }
  }
  config.title = "Playground"
  config.csrf = true
  config.playground_version = "latest"
  # Ideally the assets would be added to your projects `vendor/assets` directories
  config.favicon = "/assets/playground.ico"
  config.playground_js_url = "/assets/playground.js"
  config.playground_css_url = "/assets/playground.css"
  # see: https://github.com/prisma-labs/graphql-playground#settings
  config.settings = {
    "schema.polling.enable": false
  }
end
```

## Contributing

Submit a PR.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
