class Segment < ActiveRecord::Base
  belongs_to :segment_type
  belongs_to :zone
end
