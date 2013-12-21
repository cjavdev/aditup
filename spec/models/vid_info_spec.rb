# == Schema Information
#
# Table name: vid_infos
#
#  id               :integer          not null, primary key
#  video_id         :string(255)
#  provider         :string(255)
#  title            :string(255)
#  duration         :string(255)
#  date             :date
#  thumbnail_small  :string(255)
#  thumbnail_medium :string(255)
#  thumbnail_large  :string(255)
#  embed_url        :string(255)
#  embed_code       :string(255)
#  width            :string(255)
#  height           :string(255)
#  keywords         :string(255)
#  video_owner      :string(255)
#  view_count       :string(255)
#  url              :string(255)
#  spot_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  data             :binary
#  description      :text
#

require 'spec_helper'

describe VidInfo do
  it { should allow_mass_assignment_of(:date) }
  it { should allow_mass_assignment_of(:description) }
  it { should allow_mass_assignment_of(:duration) }
  it { should allow_mass_assignment_of(:embed_code) }
  it { should allow_mass_assignment_of(:embed_url) }
  it { should allow_mass_assignment_of(:height) }
  it { should allow_mass_assignment_of(:keywords) }
  it { should allow_mass_assignment_of(:provider) }
  it { should allow_mass_assignment_of(:thumbnail_small) }
  it { should allow_mass_assignment_of(:title) }
  it { should allow_mass_assignment_of(:url) }
  it { should allow_mass_assignment_of(:video_id) }
  it { should allow_mass_assignment_of(:video_owner) }
  it { should allow_mass_assignment_of(:view_count) }
  it { should allow_mass_assignment_of(:width) }
  it { should allow_mass_assignment_of(:spot_id) }
  it { should validate_presence_of(:spot) }
end
