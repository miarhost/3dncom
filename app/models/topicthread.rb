class Topicthread < ApplicationRecord
	has_many :branches, dependent: :destroy
	
end
