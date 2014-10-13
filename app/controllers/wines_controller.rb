class WinesController < ApplicationController

  def index
  	@available_at = Time.now
  	@wines = Wine.all
  end

  before_action :set_wine, only: [ :show, :edit, :update, :destroy ]

  def set_wine
    @wine = Wine.find(params[:id])
  end

  def show
#  	@wines = Wine.find(params[:id])
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      redirect_to @wine, notice: "#{@wine.name} was created!"
    else
      render :new
    end
  end

  def index
    @available_at = Time.now
    @wines = Wine.includes(:reviews).order(:name)
  end

#def create
#  	@wine = Wine.new(wine_params)
#  	@wine.save
#  	redirect_to @wine
#  end
#end

  def edit
#  	@wine = Wine.find(params[:id])
  end

  def update
    if @wine.update(wine_params)
      redirect_to @wine, notice: "#{@wine.name} was created!"
    else
      render :new
    end
  end

#def update
#  	@wine = Wine.find(params[:id])
#  	@wine.update(wine_params)
#  	redirect_to @wine
#  end

  def destroy
#  	@wine = Wine.find(param[:id])
  	@wine.destroy
      redirect_to @wine, notice: "#{@wine.name} was created!"
  end

  private

  def wine_params
  	params.require(:wine).permit(:name, :year, :winery, :country, :varietal)
  end  	

end

