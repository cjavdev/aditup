# == Schema Information
#
# Table name: agencies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Agency do
  it { should validate_uniqueness_of(:name) }
  it { should allow_mass_assignment_of(:name) }
  it { should have_many(:account_managers) }
end
