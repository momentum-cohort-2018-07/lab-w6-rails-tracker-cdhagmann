class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :monster_type
      t.string :size
      t.integer :rating

      t.timestamps
    end
  end
end
