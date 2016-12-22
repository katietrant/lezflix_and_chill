class Character < ActiveRecord::Base
  has_many :couplings
  has_many :ships, :through => :couplings
  belongs_to :show
end
