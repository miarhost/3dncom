class SubscriptionMailer < ApplicationMailer
	require 'mail'

default from: "rghostme@gmail.com"

#def initialize(email)
	#@email = email
	#@email = Mail::Address.new 
	#@email.format
#end
#@submail = submail
#end

#def new
#@submail = SubscriptionMailer.new
#end



def subscribe(email, subscription)
	@subscription = subscription
	@email = email
		@email = Mail::Address.new email
			@email.format
#@submail = email
@email = email 
mail(to: email, subject: "Your subscription is set")
 #redirect_to subscription
#@submail.save
#else
#redirect_to new_user_path(@user)
#end

end

end