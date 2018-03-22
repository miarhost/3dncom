class Subscription < ApplicationRecord
	#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	#validates :email, presence: true, length: { maximum: 255 },
	                  #format: { with: VALID_EMAIL_REGEX }
	                  

	def subscribe(email)	
	@email = email	
		SubscriptionMailer.subscribe(email)
    end
end
