class AddOrganismToPapers < ActiveRecord::Migration[5.0]
  def change
    add_reference :papers, :organism, foreign_key: true
  end
end
