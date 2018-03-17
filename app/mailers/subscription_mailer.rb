class SubscriptionMailer < ApplicationMailer
default from: "rghostme@gmail.com"

#def initialize(submail)
#@submail = submail
#end

#def new
#@submail = SubscriptionMailer.new
#end



def subscription(email, article)
#@submail = email
@email = email 
mail(to: email, subject: "Your subscription is set")
 redirect_to subscription
#@submail.save
#else
#redirect_to new_user_path(@user)
#end

end

end