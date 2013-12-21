# == Schema Information
#
# Table name: traits
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Trait do
  it { should allow_mass_assignment_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
