class CreateDinosaurs < ActiveRecord::Migration[5.2]
  def change
    create_table :dinosaurs do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :species
      t.integer :age
      t.string :gender
      t.string :food
      t.text :habits
      t.text :policy
      t.string :location
      t.text :description
      t.integer :price
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
