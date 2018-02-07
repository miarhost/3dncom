class Branch < ApplicationRecord
	has_many :topics, dependent: :destroy
	belongs_to :topicthreads
end
