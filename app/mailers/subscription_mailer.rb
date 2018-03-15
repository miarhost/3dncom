class SubscriptionMailer < ApplicationMailer
default_from: "rghostme@gmail.com"



def subscription(email)
email = gets.chomp
@subemail = email
if @subemail == @user.email
mail(to: email, subject: "Your subscription was set")
else
redirect_to new_user_path(@user)
end

end

end