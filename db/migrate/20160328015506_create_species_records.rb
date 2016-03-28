class CreateSpeciesRecords < ActiveRecord::Migration
  def change
    create_table :species_records do |t|
      t.integer :count
      t.references :day_description, index: true, foreign_key: true
      t.references :period, index: true, foreign_key: true
      t.references :segment, index: true, foreign_key: true
      t.references :species, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
