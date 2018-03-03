class Branch < ApplicationRecord
	has_many :topics, :foreign_key => :branch_id, inverse_of: :branch

	belongs_to :topicthread
	
	belongs_to :admin
end
