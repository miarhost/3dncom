class Branch < ApplicationRecord
	has_many :topics
	belongs_to :topicthread, dependent: :destroy, :optional => true 
	belongs_to :admin



end
