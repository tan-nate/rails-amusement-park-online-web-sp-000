class AttractionsController < ApplicationController
    def index
        @attractions = Attraction.all
        @user = User.find(params[:id])
    end

    def show
      @attraction = Attraction.find(params[:id])
      @user = User.find(session[:user_id])
      @ride = Ride.new
    end
end
