# == Schema Information
#
# Table name: demographics
#
#  id                 :integer          not null, primary key
#  spot_id            :integer
#  start_age          :integer
#  end_age            :integer
#  gender             :string(255)
#  dma_id             :integer
#  marital_status     :string(255)
#  education          :string(255)
#  number_of_children :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :demographic do
    start_age 18
    end_age 25
    gender "male"
  end
end
