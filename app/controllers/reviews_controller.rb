class ReviewsController < ApplicationController

  before_action :set_book

  def index
  	@reviews = @wine.reviews.order('created_at desc')
  end

  private

  def set_wine
  	@wine = Wine.find(params[:wine_id])
  end

end

