class CreateVidInfos < ActiveRecord::Migration
  def change
    create_table :vid_infos do |t|

    t.string   "video_id"
    t.string   "provider"
    t.string   "title"
    t.string   "duration"
    t.date     "date"
    t.string   "thumbnail_small"
    t.string   "thumbnail_medium"
    t.string   "thumbnail_large"
    t.string   "embed_url"
    t.string   "embed_code"
    t.string   "width"
    t.string   "height"
    t.string   "keywords"
    t.string   "video_owner"
    t.string   "view_count"
    t.string   "url"
    t.integer  "ad_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.binary   "data"
    t.text     "description"

      t.timestamps
    end
  end
end
