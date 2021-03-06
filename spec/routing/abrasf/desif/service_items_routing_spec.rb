# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe ServiceItemsController, type: :routing do
      describe 'routing' do
        routes { Engine.routes }

        it do
          expect(get: service_items_path)
            .to route_to 'abrasf/desif/service_items#index'
        end
      end
    end
  end
end
