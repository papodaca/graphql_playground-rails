module GraphqlPlayground
  module Rails
    class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception

      def index
      end

      helper_method :get_endpoint_url
      def get_endpoint_url
        params[:graphql_path] || raise(%|You must include `graphql_path: "/my/endpoint"` when mounting GraphqlPlayground::Rails::Engine|)
      end
    end
  end
end
