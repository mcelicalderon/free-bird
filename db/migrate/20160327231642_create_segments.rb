class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :name
      t.references :segment_type, index: true, foreign_key: { on_delete: :cascade }
      t.references :zone, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps null: false
    end
  end
end
