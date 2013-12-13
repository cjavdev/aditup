class VidInfo < ActiveRecord::Base
  attr_accessibl :date, :description, :duration,
           :embed_code, :embed_url, :height, :keywords,
           :provider, :thumbnail_large, :thumbnail_medium,
           :thumbnail_small, :title, :url, :video_id,
           :video_owner, :view_count, :width, :spot_id

  belongs_to :spot
end
