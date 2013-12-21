# == Schema Information
#
# Table name: traits
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trait < ActiveRecord::Base
  attr_accessible :name
  validates :name, :uniqueness => true

  has_many :trait_joins
end
