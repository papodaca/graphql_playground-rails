module GraphqlPlayground
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace GraphqlPlayground::Rails
    end
  end
end
