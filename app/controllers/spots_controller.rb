class SpotsController < ApplicationController
  include SpotsHelper
  before_filter :authenticate_account_manager!
  before_filter :require_current_client!

  def index
    @spots = current_client.spots
  end

  def show
    @spot = current_client.spots.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = current_client.spots.build(params[:spot])
    if @spot.save
      redirect_to client_spot_url(current_client, @spot)
    else
      flash.now[:errors] = @spot.errors.full_messages
      render :new
    end
  end

  def edit
    @spot = current_client.spots.find(params[:id])
  end

  def update
    @spot = current_client.spots.find(params[:id])
    if @spot.update_attributes(params[:spot])
      redirect_to @spot
    else
      flash.now[:errors] = @spot.errors.full_messages
      render :edit
    end
  end
end
