class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json


  # GET /messages/1


  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit


  # POST /messages
  # POST /messages.json
def create
  @message = current_user.messages.build(message_params)
  @message.topic_id = params[:topic_id]
  if current_user 
  @message.save
  flash[:success] = 'Your message is sent'
redirect_to topic_path(@message.topic)
   else
    redirect_to new_user_session_path
   end
end




    def message_params
      params.require(:message).permit(:author, :body)
    end
end
