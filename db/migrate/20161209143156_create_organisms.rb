class CreateOrganisms < ActiveRecord::Migration[5.0]
  def change
    create_table :organisms do |t|
      t.string :name
      t.string :phylum
      t.string :order
      t.string :family
      t.string :genus
      t.references :group, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
