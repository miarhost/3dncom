class Topicthread < ApplicationRecord
	has_many :branches, dependent: :destroy

			def branches_list
		self.branches.collect do |branch|
			 branch.title
		   end
	         end
	
end
