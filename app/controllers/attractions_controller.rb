class AttractionsController < ApplicationController
  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attraction_path(@attraction)
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

    def update
      Attraction.update(attraction_params)
    end

    private

    def attraction_params
      params.require(:attraction).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
    end
end
