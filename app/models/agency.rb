class Agency < ActiveRecord::Base
  attr_accessible :name

  has_many :account_managers
end
