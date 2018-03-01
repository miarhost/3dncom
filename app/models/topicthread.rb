class Topicthread < ApplicationRecord
	has_many :branches, inverse_of: :topicthread

	accepts_nested_attributes_for :branches 

			def branches_list
		self.branches.collect do |branch|
			 branch.title
		   end
	         end

	        
	
end
