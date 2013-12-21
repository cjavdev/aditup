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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vid_info do
  end
end
