class CreateCensusDates < ActiveRecord::Migration
  def change
    create_table :census_dates do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
