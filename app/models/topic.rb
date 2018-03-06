class Topic < ApplicationRecord
	belongs_to :branch
	belongs_to :user, :optional => true
			
	has_many :messages, dependent: :destroy
	validates :body, :name, presence: true

	  mount_uploader :images, ImageUploader
  serialize :images, JSON
	
 

validates :image, presence: true, allow_nil: true
end
