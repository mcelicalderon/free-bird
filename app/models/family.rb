class Family < ActiveRecord::Base
  has_many :genres
  has_many :species, through: :genres
end
