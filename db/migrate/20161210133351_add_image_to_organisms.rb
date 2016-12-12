class AddImageToOrganisms < ActiveRecord::Migration[5.0]
  def change
    add_column :organisms, :image, :text
  end
end
