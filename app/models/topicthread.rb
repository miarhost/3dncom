class Topicthread < ApplicationRecord
	has_many :branches

			def branches_list
		self.branches.collect do |branch|
			 branch.title
		   end
	         end

	accepts_nested_attributes_for :branches         
	
end
