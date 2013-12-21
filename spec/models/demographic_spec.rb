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

require 'spec_helper'

describe Demographic do
  it { should allow_mass_assignment_of(:dma_id) }
  it { should allow_mass_assignment_of(:spot_id) }
  it { should allow_mass_assignment_of(:start_age) }
  it { should allow_mass_assignment_of(:end_age) }
  it { should allow_mass_assignment_of(:gender) }
  it { should allow_mass_assignment_of(:marital_status) }
  it { should allow_mass_assignment_of(:education) }
  it { should allow_mass_assignment_of(:number_of_children) }
  it { should ensure_inclusion_of(:number_of_children).in_range(0..15) }
  it { should ensure_inclusion_of(:gender).in_array(%w(both male female)) }
  it { should ensure_inclusion_of(:education).in_array(%w(none nohs hs some_college college advanced)) }

  it "should only not allow end age to be less than start age" do
    d = FactoryGirl.build(:demographic, :end_age => 3, :start_age => 5)
    d.should have_at_least(1).errors_on(:start_age)
  end

  it "should only allow start ages between 0 and 100" do
    d = FactoryGirl.build(:demographic, :start_age => -1)
    d.should have_at_least(1).errors_on(:start_age)
    d = FactoryGirl.build(:demographic, :start_age => 101)
    d.should have_at_least(1).errors_on(:start_age)
  end

  it "should only allow end ages between 0 and 100" do
    d = FactoryGirl.build(:demographic, :end_age => -1)
    d.should have_at_least(1).errors_on(:end_age)
    d = FactoryGirl.build(:demographic, :end_age => 101)
    d.should have_at_least(1).errors_on(:end_age)
  end
end
