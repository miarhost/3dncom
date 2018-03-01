class Branch < ApplicationRecord
	has_many :topics, inverse_of: :branch, dependent: :destroy

	accepts_nested_attributes_for :topics

	belongs_to :topicthread, dependent: :destroy, :optional => true 
	belongs_to :admin



end
