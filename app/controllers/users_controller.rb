class UsersController < ApplicationController


	def index
		@users = User.all
    end

    #def name
    	#@name = current_user.name if user.logged_in?
   # end

end
