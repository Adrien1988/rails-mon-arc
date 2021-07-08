class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(ad_params)
    @ad.save
    redirect_to ad_path(@ad)
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])
    @ad.update(ad_params)
    redirect_to ad_path(@ad)
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to ads_path
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :equipment, :price, :state, :description, :location)
  end
end
