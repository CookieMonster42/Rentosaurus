class AddCoordinatesToDinosaurs < ActiveRecord::Migration[5.2]
  def change
    add_column :dinosaurs, :latitude, :float
    add_column :dinosaurs, :longitude, :float
  end
end
