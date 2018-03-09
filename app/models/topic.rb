class Topic < ApplicationRecord
	belongs_to :branch
	belongs_to :user, :optional => true
			
	has_many :messages, dependent: :destroy
	validates :body, :name, presence: true

	  mount_uploader :image, ImageUploader
  #serialize :images, JSON
	#attr_accessible  :image
 #validates_processing_of :image

#validates :image, presence: true, allow_nil: true
end
