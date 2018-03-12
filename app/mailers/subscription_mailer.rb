class SubscriptionMailer < Devise::Mailer

layout 'mailers'

default_template_path: 'devise/mailer'

def mail(user, mail)
	user = @user
	@user.email = gets.chomp
	mail(to: @user.email, flash[notice:] = "Your subscription is set")
end 
