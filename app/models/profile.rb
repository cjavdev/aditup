class Profile < ActiveRecord::Base
  attr_accessible :user_id
  include Traitable
  belongs_to :user
end
