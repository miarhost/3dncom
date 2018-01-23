class Topic < ApplicationRecord
	belongs_to :user, :optional => true
	belongs_to :branch
	has_many :messages, dependent: :destroy
	
end
