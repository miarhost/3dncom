class Topicthread < ApplicationRecord
	has_many :branches
	belongs_to :admin
end
