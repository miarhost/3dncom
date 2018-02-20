class Branch < ApplicationRecord
	has_many :topics
	belongs_to :topicthreads
	belongs_to :admin


end
