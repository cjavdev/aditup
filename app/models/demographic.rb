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

class Demographic < ActiveRecord::Base
  attr_accessible :dma_id,
                  :spot_id,
                  :gender,
                  :end_age,
                  :start_age,
                  :marital_status,
                  :education,
                  :number_of_children

  validates_numericality_of :start_age,
                            :end_age,
                            :only_integer => true,
                            :greater_than_or_equal_to => 0,
                            :less_than => 100

  validates_inclusion_of :number_of_children, :in => 0..15
  validates_inclusion_of :gender, :in => %w(both male female)
  validates_inclusion_of :marital_status, :in => ["single", "married",
                                                  "divorced", "widowed",
                                                  "relationship", "partnership"]
  validates_inclusion_of :education, :in => %w(none nohs hs some_college college advanced)
  validate :start_before_end_age, :on => :create

  belongs_to :dma
  belongs_to :spot

  private
  def start_before_end_age
    if end_age.nil? || start_age.nil? || end_age < start_age
      errors.add(:start_age, "start age must be less than or equal to end age")
    end
  end
end
