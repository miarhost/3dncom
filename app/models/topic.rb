class Topic < ApplicationRecord
	belongs_to :user, :optional => true
	belongs_to :branch	
	
	has_many :messages, dependent: :destroy
	validates :body, :name, presence: true
	
end
