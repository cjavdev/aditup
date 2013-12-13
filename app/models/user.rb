class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable

  attr_accessible :email, :name, :password, :password_confirmation, :remember_me

  has_many :authorizations
end
