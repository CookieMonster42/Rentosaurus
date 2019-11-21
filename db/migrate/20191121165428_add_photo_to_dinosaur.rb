class AddPhotoToDinosaur < ActiveRecord::Migration[5.2]
  def change
    add_column :dinosaurs, :photo, :string
  end
end
