class SubscriptionsController < ApplicationController
 skip_before_action :verify_authenticity_token  
# before_action :set_subscription, only: [:show]
	def new
		@subscription = Subscription.new
	end

	def create
		#@subscription = Subscription.new(subscription_params)
		@subscription = Subscription.new
		SubscriptionMailer.subscribe(@email)
		
		if @subscription.save
			flash[:success] = 'Your subscription is set'
			render new_subscription_path
			#redirect_to home_path
			#format.html { render 'subscribe' }
			#format.text { render 'subscribe' }
		else
		end
    end

    def show 
    	@subscription = Subscription.find([:id])
    end

  
#private
    #def subscription_params
    	#params.require(:subscription).permit(:email)
    #end
end
