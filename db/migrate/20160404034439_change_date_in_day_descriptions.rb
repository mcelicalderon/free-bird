class ChangeDateInDayDescriptions < ActiveRecord::Migration
  def change
    remove_column :day_descriptions, :date
    add_column :day_descriptions, :start_time, :time
  end
end
