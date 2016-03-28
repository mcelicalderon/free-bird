class Species < ActiveRecord::Base
  belongs_to :genus
  belongs_to :family
  has_many :species_records
end
