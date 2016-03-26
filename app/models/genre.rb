class Genre < ActiveRecord::Base
  belongs_to :family
  has_many :species
end
