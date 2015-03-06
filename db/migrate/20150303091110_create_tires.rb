class CreateTires < ActiveRecord::Migration
  def change
    create_table :tires do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.string :spec
      t.integer :brand_id

      t.timestamps null: false
    end
  end
end
