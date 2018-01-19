class Zombie < ApplicationRecord

	scope :rotting, where(rotting: true)
end
