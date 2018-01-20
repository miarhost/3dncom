class BranchesController < ApplicationController
	class ArticlesController < ApplicationController
  before_action :set_branch, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only:[:edit, :update, :destroy]

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
  end

  # GET /articles/new
  def new
    @branch = Branch.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json

  	 

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

end
