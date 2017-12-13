class CommentsController < ApplicationController
		before_action :authenticate_user!
def new
	@comment = Comment.new
end

def create
	@comment = current_user.comments.build(comment_params)
	@comment.article_id = params[:article_id]
	if current_user 
	@comment.save
	flash[:success] = 'Comment added'
redirect_to article_path(@comment.article)
   else
   	redirect_to new_user_session_path
   end
end

def comment_params
	params.require(:comment).permit(:author_name, :body)
end

end