class Coupling < ActiveRecord::Base
  belongs_to :ship
  belongs_to :character
end
