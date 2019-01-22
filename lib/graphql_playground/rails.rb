require "graphql_playground/rails/engine"
require "graphql_playground/rails/version"
require "graphql_playground/rails/config"

module GraphqlPlayground
  module Rails
    class << self
      attr_accessor :config

      def configure
        yield config if block_given?
      end
    end

    self.config = Config.new
  end
end
