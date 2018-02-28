class BranchesController < ApplicationController
    before_action :set_branch, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:create, :edit, :destroy]

  # GET /branches
  # GET /branches.json
  def index
    @branches = Branch.all
   end

  # GET /branches/1
  # GET /branches/1.json
  def show
@branch = Branch.find(params[:id])
     @topic = Topic.new
     @topic.branch_id = session[:branch_id]
    @topic.save
 end

  def new
    @branch = Branch.new

  end

  def edit
  end

  def create
    @branch = current_admin.branches.build(branch_params)
    @branch.topicthread_id = params[:topicthread_id]
    respond_to do |format|
      if @branch.save
        format.html { redirect_to @branches, notice: 'Thread saved.' }
        format.json { render :show, status: :created, location: @branches }
      else
        format.html { render :new }
        format.json { render json: @branch.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @branch.update(branch_params) 
        format.html { redirect_to @branch, notice: 'Thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @branch }
      else
        format.html { render :edit }
        format.json { render json: @branch.errors, status: :unprocessable_entity }
      end
    end
  end
  
def destroy
end

  private
    # Use callbacks to share common setup or constraints between actions.
   def set_branch
      @branch = Branch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def branch_params
      params.require(:branch).permit(:title)
    end
end


