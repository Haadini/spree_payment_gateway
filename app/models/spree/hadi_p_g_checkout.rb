module Spree
  class HadiPG < ActiveRecord::Base
    belongs_to :order
  end
end
