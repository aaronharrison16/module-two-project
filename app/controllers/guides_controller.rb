class GuidesController < ApplicationController
    before_action :set_guide, only: [:show]


  def index
  end

  def new
    @guide = Guide.new
  end

  def create
    @guide = Guide.new(guide_params)


    if @guide.save 
      redirect_to @guide
    else
      render :new
    end
  end

  def show
    @guide = Guide.find(params[:id])
  end

  private

   def guide_params
    params.require(:guide).permit(:title, :content)
   end

   def set_guide
      @guide = Guide.find(params[:id])
    end
end
