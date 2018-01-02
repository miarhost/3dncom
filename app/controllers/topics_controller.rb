class TopicsController < ApplicationController
 before_action :set_topic, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only:[:create, :edit, :update, :destroy]

	def index
		@topics = Topic.all
	end

	def show 
    @topic = Topic.find(params[:id])
    @author_name = current_user.name
   	@message = Message.new
  	@message.topic_id = @topic.id
  	@message.save
	end

	def new
	@topic = Topic.new
    end
    
    def edit
    end

      def create
    @topic = Topic.new(topic_params) 

       respond_to do |format|
      if @topic.save
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
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


