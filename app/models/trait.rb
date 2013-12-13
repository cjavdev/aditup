class Trait < ActiveRecord::Base
  attr_accessible :name
  validates :name, :uniqueness => true

  has_many :trait_joins
end
