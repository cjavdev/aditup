# == Schema Information
#
# Table name: spots
#
#  id              :integer          not null, primary key
#  client_id       :integer
#  video_url       :string(255)
#  view_value      :float
#  buy_value       :float
#  paid_views_left :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe Spot do
  it { should allow_mass_assignment_of(:buy_value) }
  it { should allow_mass_assignment_of(:client_id) }
  it { should allow_mass_assignment_of(:paid_views_left) }
  it { should allow_mass_assignment_of(:video_url) }
  it { should allow_mass_assignment_of(:view_value) }
  it { should validate_presence_of(:paid_views_left) }
  it { should validate_numericality_of(:paid_views_left).is_greater_than_or_equal_to(0) }
end
