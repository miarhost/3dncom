class Topicthread < ApplicationRecord
	has_many :branches, :foreign_key => :topicthread_id, inverse_of: :topicthread
        
	
end
