module GraphiQL
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace GraphiQL::Rails

      initializer 'graphiql.assets' do |app|
        app.middleware.insert_before(ActionDispatch::Static, ActionDispatch::Static, "#{root}/public")
      end
    end
  end
end
