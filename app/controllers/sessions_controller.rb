class SessionsController < ApplicationController

def create
	session[:branch_id] = @branch.id
end

end
