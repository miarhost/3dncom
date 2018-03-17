class LandingController < ApplicationController



  def home
  end

  def about
  end

  def gallery
   @image_urls = ["night.jpg", "6.jpg", "studio.jpg"]
    end
 
 def subscription(email)
 	SubscriptionMailer.subscription(email)
 end

  
    
end
