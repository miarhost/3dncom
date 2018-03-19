class SubscriptionsController < ApplicationController

	def new
	end

	def subscribe(email)
		@submail = email
		SubscriptionMailer.subscribe(@submail)
		if @submail.save
			format.html { render 'subscription' }
			format.text { render 'subscription' }
		else
    end

end
