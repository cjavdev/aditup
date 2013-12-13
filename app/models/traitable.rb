module Traitable
  extend ActiveSupport::Concern

  included do
    has_many :trait_joins, :as => :traitable
    has_many :traits, :through => :trait_joins, :source => :trait
    validate :trait_count_le
  end

  def trait_count_le
    errors.add(:traits, "too many") if traits.length > 5
  end

  module ClassMethods
  end
end
