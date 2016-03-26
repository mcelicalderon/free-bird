class Family < ActiveRecord::Base
  has_many :genera
  has_many :species, through: :genera
end
