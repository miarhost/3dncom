module ApplicationHelper
	def full_title(page_title = '')
    base_title = "3d News"
    if page_title.empty?
    	base_title
    else
     page_title + " | " + base_title 
    end
    end

    def gravatar_for(user, size)
         gravatar_id =  Digest::MD5.hexdigest(user.email)
           gravatar_url =  "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
      
       image_tag(gravatar_url, alt: user.name, class: "gravatar")
     end

end
