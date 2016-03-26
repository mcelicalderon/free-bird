class CreateGenera < ActiveRecord::Migration
  def change
    create_table :genera do |t|
      t.string :name
      t.references :family, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps null: false
    end
  end
end
