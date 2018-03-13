class SubscriptionMailer < Devise::Mailer

layout 'mailers'

default_template_path: 'devise/mailer'
def new 
@subscription = SubscriptionMailer.new(params[:subscription])
end

def create
@subscription = SubscriptionMailer.new(params[:subscription])
 respond_to do |format|
      if @subscription.save
        
          format.html { redirect_to about_path, notice: 'Your subscription was set. You now can get free tutorials, maps and models updates! ' }
          format.json { render json: subscription_path, status: :created, location: @subscription }
        else
          format.html { redirect_to home_path, notice: 'Error while mailing, sorry.' }
          format.json { render json: @subscription.errors, status: :unprocessable_entity }
        end
     end
end


end