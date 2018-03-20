class SubscriptionsController < ApplicationController

	def new
		@subscrittion = Subscription.new
	end

	def subscribe(email)
		@submail = email
		SubscriptionMailer.subscribe(@submail)
		if @submail.save
			format.html { render 'subscribe' }
			format.text { render 'subscribe' }
		else
		end
    end

end
