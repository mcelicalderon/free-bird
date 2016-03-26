class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :name
      t.text :description
      t.references :genus, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps null: false
    end
  end
end
