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

class Spot < ActiveRecord::Base
  attr_accessible :buy_value,
                  :client_id,
                  :paid_views_left,
                  :video_url,
                  :view_value

  validates :view_value, :presence => true
  validates :paid_views_left, :presence => true,
    :numericality => { :greater_than_or_equal_to => 0 }

  include Traitable

  belongs_to :client
  has_many :traits
  has_many :spot_views
  has_one :_info,
          :primary_key => :id,
          :foreign_key => :spot_id,
          :class_name => 'VidInfo',
          :dependent => :destroy

  delegate :date, :description, :duration,
           :embed_code, :embed_url, :height, :keywords,
           :provider, :thumbnail_large, :thumbnail_medium,
           :thumbnail_small, :title, :url, :video_id,
           :video_owner, :view_count, :width, :ad_id,
           :to => :info

  def stats
    { ad_view_count: self.ad_views.count }
  end

  def info(force = false)
    if self._info && !!self._info.video_id && !force
      return self._info
    end

    v = VideoInfo.new(self.video_url)
    x = VidInfo.new
    [:date, :description, :duration,
     :embed_code, :embed_url, :height, :keywords,
     :provider, :thumbnail_large, :thumbnail_medium,
     :thumbnail_small, :title, :url, :video_id,
     :view_count, :width, :ad_id].each do |meth|
       if v.methods.include?(meth)
         x.send("#{ meth }=", v.send(meth))
       end
     end
     self._info = x
  end
end
