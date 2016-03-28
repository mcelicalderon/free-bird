class Segment < ActiveRecord::Base
  belongs_to :segment_type
  belongs_to :zone
  has_many :species_records
end
