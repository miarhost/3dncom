class SubscriptionMailer < ApplicationMailer
default from: "rghostme@gmail.com"

#def initialize(submail)
#@submail = submail
#end

#def new
#@submail = SubscriptionMailer.new
#end

def subscription(email)
#@submail = email

mail to: email
redirect_to subscription
#@submail.save
#else
#redirect_to new_user_path(@user)
#end

end

end