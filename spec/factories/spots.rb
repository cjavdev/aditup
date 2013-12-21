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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spot do
  end
end
