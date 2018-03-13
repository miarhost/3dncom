class SubscriptionsController < ApplicationController


	def new 
@subscription = Subscription.new(params[:subscription])
end

def create
@subscription = Subscription.new(params[:subscription])
 respond_to do |format|
      if @subscription.save
        
          format.html { redirect_to about_path, notice: 'Your subscription was set. You now can get free tutorials, maps and models updates! ' }
          format.json { render json: subscription_path, status: :created, location: @subscription }
        else
          format.html { redirect_to home_path, notice: 'Error while mailing, sorry.' }
          format.json { render json: @subscription.errors, status: :unprocessable_entity }
        end
     
end

private

def subscription_params
	params.require(:subscription).permit(:email)
end

end
