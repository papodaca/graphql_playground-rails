module GraphqlPlayground
  module Rails
    class Config
      # @example Adding a header to the request
      #    config.headers["My-Header"] = -> (view_context) { "My-Value" }
      #
      # @return [Hash<String => Proc>] Keys are headers to include in GraphQL requests, values are `->(view_context) { ... }` procs to determin values
      attr_accessor :headers

      attr_accessor :settings, :csrf, :title, :logo, :playground_version, :playground_js_url, :playground_css_url

      DEFAULT_HEADERS = {
        'Content-Type' => ->(_) { 'application/json' },
      }

      CSRF_TOKEN_HEADER = {
        "X-CSRF-Token" => -> (view_context) { view_context.form_authenticity_token }
      }

      DEFAULT_SETTINGS = {
        "request.credentials": "include"
      }

      def initialize()
        @title = nil
        @favicon = nil
        @csrf = true
        @headers = DEFAULT_HEADERS
        @playground_version = 'latest' 
        @playground_js_url = nil
        @playground_css_url = nil
        @settings = {}
      end

      # Call defined procs, add CSRF token if specified
      def resolve_headers(view_context)
        all_headers = DEFAULT_HEADERS.merge(headers)

        if csrf
          all_headers = all_headers.merge(CSRF_TOKEN_HEADER)
        end

        all_headers.each_with_object({}) do |(key, value), memo|
          memo[key] = value.call(view_context)
        end
      end

      def all_settings
        DEFAULT_SETTINGS.merge(settings)
      end
    end
  end
end
