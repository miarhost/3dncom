module ApplicationHelper
	def full_title(page_title = '')
    base_title = "3d News"
    if page_title.empty?
    	base_title
    else
     page_title + " | " + base_title 
    end
    end

    def gravatar_for(user, opts = {})
    	opts[:alt] = user.name
    	image_tag "https://www.gravatar.com/avatar
    	#/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}",
    	       opts
    end

end
