# frozen_string_literal: true

module Abrasf
  module Desif
    class Engine < ::Rails::Engine
      isolate_namespace Abrasf::Desif
      engine_name 'abrasf_desif'

      initializer :append_migrations do |app|
        unless app.root.to_s.match root.to_s
          config.paths['db/migrate'].expanded.each do |expanded_path|
            app.config.paths['db/migrate'] << expanded_path
          end
        end
      end

      config.to_prepare do
        Dir.glob(Rails.root + 'app/decorators/**/*_decorator*.rb').each do |c|
          require_dependency(c)
        end
      end

      config.generators do |g|
        g.test_framework :rspec, fixture: false
        g.assets false
        g.helper false
      end
    end
  end
end
