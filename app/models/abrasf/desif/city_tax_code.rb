# frozen_string_literal: true

module Abrasf
  module Desif
    class CityTaxCode < ActiveRecord::Base
      belongs_to :tax_code, foreign_key: :abrasf_desif_tax_code_id
      belongs_to :city, foreign_key: :abrasf_desif_city_id

      alias_attribute :code, :city_tax_code
      alias_attribute :city_id, :abrasf_desif_city_id
      alias_attribute :tax_code_id, :abrasf_desif_tax_code_id
      delegate :description, to: :tax_code

      validates_presence_of :abrasf_desif_tax_code_id,
                            :abrasf_desif_city_id,
                            :since

      validates :city_tax_code,
                presence: true,
                length: { maximum: 20, allow_blank: true }

      validates :aliquot,
                presence: true,
                numericality: { greater_than_or_equal_to: 2,
                                less_than_or_equal_to: 5,
                                allow_nil: true }
    end
  end
end
