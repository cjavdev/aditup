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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trait_join do
  end
end
