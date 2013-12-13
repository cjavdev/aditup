class CreateTraitJoins < ActiveRecord::Migration
  def change
    create_table :trait_joins do |t|
      t.integer :trait_id
      t.integer :traitable_id
      t.string :traitable_type

      t.timestamps
    end
  end
end
