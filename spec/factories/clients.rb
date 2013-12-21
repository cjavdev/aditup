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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
  end
end
