class ChangeNameOfAdIdForeignKey < ActiveRecord::Migration
  def change
    rename_column :vid_infos, :ad_id, :spot_id
  end
end
