class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.integer :spot_id
      t.integer :start_age
      t.integer :end_age
      t.string :gender
      t.integer :dma_id
      t.string :marital_status
      t.string :education
      t.integer :number_of_children

      t.timestamps
    end
  end
end
