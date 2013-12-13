class Agency < ActiveRecord::Base
  attr_accessible :name
  validates :name, :uniqueness => true
  has_many :account_managers
end
