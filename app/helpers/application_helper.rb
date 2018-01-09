module ApplicationHelper
	def full_title(page_title = '')
    base_title = "3d News"
    if page_title.empty?
    	base_title
    else
     page_title + " | " + base_title 
    end
    end

    def gravatar_for(user, size: 25)
           gravatar_url =  "https://www.gravatar.com/avatar"
       gravatar_id =  Digest::MD5.hexdigest(user.email)
       image_tag(gravatar_url, alt: user.name)
    end

        def gravatar_for_topics(user, size: 10)
           gravatar_url =  "https://www.gravatar.com/avatar"
       gravatar_id =  Digest::MD5.hexdigest(user.email)
       image_tag(gravatar_url, alt: user.name)
    end

        def gravatar_for_admin(user, size: 25)
           gravatar_url =  "https://www.gravatar.com/avatar"
       gravatar_id =  Digest::MD5.hexdigest(user.email)
       image_tag(gravatar_url, alt: user.name)
    end

end
