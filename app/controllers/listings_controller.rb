class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new

  end

  def create
    render text: "Posting an item. URL: #{params[:url]}, Item: #{params[:item]}, Brand: #{params[:brand]}"
  end
end
