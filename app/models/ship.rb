class Ship < ActiveRecord::Base
  has_many :couplings
  has_many :characters, :through => :couplings
  belongs_to :Show
end
