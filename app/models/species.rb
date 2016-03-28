class Species < ActiveRecord::Base
  belongs_to :genus
  has_one :family, through: :genus
  has_many :species_records
end
