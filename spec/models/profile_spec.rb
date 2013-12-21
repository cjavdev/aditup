# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Profile do
  it { should allow_mass_assignment_of(:user_id) }
  it { should validate_presence_of(:user) }
end
