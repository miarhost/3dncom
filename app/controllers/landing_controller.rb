class LandingController < ApplicationController
include CarouselHelper
  def home
  end

  def about
  end

  def gallery
 @image_urls = ["night.jpg", "6.jpg"]
  end
  
end
