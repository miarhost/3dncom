class TopicsController < ApplicationController
 before_action :set_topic, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:edit, :update, :destroy]

	def index
		@topics = Topic.all

	end

	def show 

@topic = Topic.find(params[:id])
   	@message = Message.new
  	@message.topic_id = @topic.id
  	@message.save
	end

	def new
	@topic = Topic.new
       if !user_signed_in?
  redirect_to new_user_session_path
 end
    end
    
    def edit
    end

def create
  @topic = current_user.topics.build(topic_params)
   @topic.user_id = @topic.user.id
  if  @topic.save
 redirect_to topics_path(@topics)
   else
    flash[:warning] = "Your topic can't be saved!"
     redirect_to topics_path(@topics)
   end
end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params) 
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic }
      else
        format.html { render :edit }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
  	@topic = Topic.find(params[:id])
    @topic.destroy 
    respond_to do |format|
      format.html { redirect_to topics_url, notice: 'Topic was successfully deleted.' }
      format.json { head :no_content }
    end

     end

       private

    def set_topic
      @topic = Topic.find(params[:id])
    end


    def topic_params
      params.require(:topic).permit(:name, :body)
    end
end


