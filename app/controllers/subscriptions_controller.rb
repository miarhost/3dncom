require 'mail'

class SubscriptionsController < ApplicationController
  skip_before_action :verify_authenticity_token  
  #before_action :set_subscription, only: [:create, :show]
  
	def new
		@subscription = Subscription.new
	end

  def create
		@subscription = Subscription.new#(subscription_params)
		# SubscriptionMailer.subscribe(@email)
    # @email = Mail::Address.new(:email)
			
    #@email.format
    #@email =  "/home?email={form_field :email}"

		if @subscription.save
			flash[:success] = 'Your subscription is set'
			#render new_subscription_path
			#redirect_to home_path
			#format.html { render 'subscribe' }
			#format.text { render 'subscribe' }
      redirect_to home_path
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
