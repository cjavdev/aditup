# == Schema Information
#
# Table name: clients
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  account_manager_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'spec_helper'

describe Client do
  it { should allow_mass_assignment_of(:account_manager_id) }
  it { should allow_mass_assignment_of(:account_manager_id) }
  it { should validate_presence_of(:account_manager) }
  it { should belong_to(:account_manager) }
end
