class Spot < ActiveRecord::Base
  attr_accessible :buy_value,
                  :client_id,
                  :paid_views_left,
                  :video_url,
                  :view_value

  belongs_to :client
end
