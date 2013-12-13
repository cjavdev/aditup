class AccountManager < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
  attr_accessible :email, :password, :agency_id, :password_confirmation, :remember_me

  belongs_to :agency
  has_many :clients
end
