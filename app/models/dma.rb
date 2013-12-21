# == Schema Information
#
# Table name: dmas
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dma < ActiveRecord::Base
  attr_accessible :name

  has_many :demographics
end
