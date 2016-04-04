class AddCensusDateToDayDescriptions < ActiveRecord::Migration
  def change
    add_reference :day_descriptions, :census_date, index: true, foreign_key: { on_delete: :cascade }
  end
end
