class Branch < ApplicationRecord
	has_many :topics, dependent: :destroy
end
