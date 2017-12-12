class CommentsController < ApplicationController
	def create
	before_action :authenticate_user!
end
end
