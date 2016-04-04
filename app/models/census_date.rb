class CensusDate < ActiveRecord::Base
  has_many :day_descriptions
  has_many :species_records, through: :day_descriptions
end
