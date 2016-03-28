class CreateDayDescriptions < ActiveRecord::Migration
  def change
    create_table :day_descriptions do |t|
      t.datetime :date
      t.string :temperature
      t.text :description

      t.timestamps null: false
    end
  end
end
