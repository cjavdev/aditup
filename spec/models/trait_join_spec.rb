# == Schema Information
#
# Table name: trait_joins
#
#  id             :integer          not null, primary key
#  trait_id       :integer
#  traitable_id   :integer
#  traitable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe TraitJoin do
  it { should allow_mass_assignment_of(:trait_id) }
  it { should allow_mass_assignment_of(:traitable_id) }
  it { should allow_mass_assignment_of(:traitable_type) }
  it { should validate_uniqueness_of(:trait_id).scoped_to(:traitable_id, :traitable_type) }
end
