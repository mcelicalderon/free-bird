class SpeciesRecord < ActiveRecord::Base
  belongs_to :day_description
  belongs_to :period
  belongs_to :segment
  belongs_to :species
end
