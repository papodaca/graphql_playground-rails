require "graphql_playground/rails/engine"
require "graphql_playground/rails/version"
require "graphql_playground/rails/config"

module GraphqlPlayground
  module Rails
    class << self
      attr_accessor :config
    end

    self.config = Config.new
  end
end
