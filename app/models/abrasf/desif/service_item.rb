# frozen_string_literal: true

module Abrasf
  module Desif
    class ServiceItem < ActiveRecord::Base
      has_many :tax_codes
      validates_presence_of :id, :description
    end
  end
end
