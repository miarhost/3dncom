class TopicthreadsController < ApplicationController

  before_action :set_topicthread, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_admin!, only: [:create, :edit, :update, :destroy]

  def index 
    @topicthreads = Topicthread.all
        @branch = Branch.new
       
   
    
  end



	def new 
	 @topicthread = Topicthread.new

	end



	def show
	@topicthread = Topicthread.find(params[:id])
          @branch = Branch.new
     @branch.topicthread_id = params[:topicthread_id]
    @branch.save
    end


      def create
    @topicthread = Topicthread.new(topicthread_params) 
       respond_to do |format|
      if @topicthread.save
        format.html { redirect_to @topicthread, notice: 'Topic thread was successfully created.' }
        format.json { render :show, status: :created, location: @topicthread }
      else
        format.html { render :new }
        format.json { render json: @topicthread.errors, status: :unprocessable_entity }
      end
    end
  end

 def update
    respond_to do |format|
      if @topicthread.update(topicthread_params) 
        format.html { redirect_to @topicthread, notice: 'Topic thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @topicthread }
      else
        format.html { render :edit }
        format.json { render json: @topicthread.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	@topicthread = Topicthread.find(params[:id])
    @topicthread.destroy 
    respond_to do |format|
      format.html { redirect_to topicthreads_url, notice: 'Topic thread was successfully deleted.' }
      format.json { head :no_content }
    end
     end

       private



     def set_topicthread
      @topicthread = Topicthread.find(params[:id])
    end

    def topicthread_params
      params.require(:topicthread).permit(:name)
    end




end