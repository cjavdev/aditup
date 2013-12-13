class Client < ActiveRecord::Base
  attr_accessible :account_manager_id, :name

  belongs_to :account_manager
  has_many :spots
end
