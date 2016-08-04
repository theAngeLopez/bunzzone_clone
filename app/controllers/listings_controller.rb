class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Lisitng.new(listing_params)
    if @listing.same
      redirect_to listings_url
    else
      render :new
    end
  end

  def create
    render text: "Posting an item. URL: #{params[:url]}, Item: #{params[:item]}, Brand: #{params[:brand]}"
  end

  private
  def listing_params
    params.require(:listing).permit(:item, :brand, :quantity, :url)

  end
end
