class LandingController < ApplicationController
  def home
    @subscription = Subscription.new
  end

  def about
  end

  def gallery
    @image_urls = ["night.jpg", "6.jpg", "studio.jpg"]
  end
end
