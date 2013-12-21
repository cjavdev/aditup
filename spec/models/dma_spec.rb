# == Schema Information
#
# Table name: dmas
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Dma do
  it { should allow_mass_assignment_of(:name) }
end
