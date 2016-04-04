class DayDescription < ActiveRecord::Base
  has_many :species_records
  belongs_to :census_date
end
