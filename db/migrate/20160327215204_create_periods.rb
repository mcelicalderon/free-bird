class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :start, null: false
      t.integer :end, null: false

      t.timestamps null: false
    end
  end
end
