class Subscription < ApplicationRecord

	def subscribe(email)
		@submail = email
		SubscriptionMailer.subscribe(@submail)
    end
end
