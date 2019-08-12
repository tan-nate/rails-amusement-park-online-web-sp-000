class AttractionsController < ApplicationController
  def new
    @attraction = Attraction.new
  end

    def index
        @attractions = Attraction.all
        @user = User.find(session[:user_id])
    end

    def show
      @attraction = Attraction.find(params[:id])
      @user = User.find(session[:user_id])
      @ride = Ride.new
    end
end
