class Branch < ApplicationRecord
	has_many :topics
	belongs_to :topicthread
	belongs_to :admin


end
