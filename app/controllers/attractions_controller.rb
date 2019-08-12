class AttractionsController < ApplicationController
  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
  end

    def index
        @attractions = Attraction.all
        if session[:user_id]
          @user = User.find(session[:user_id])
        end
    end

    def show
      @attraction = Attraction.find(params[:id])
      @user = User.find(session[:user_id])
      @ride = Ride.new
    end
end
