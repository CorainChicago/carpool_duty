class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      render json: @trip
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  private

    def trip_params
      params.require(:trip).permit(:date, :time, :driver, :start_point, :destination, :number_of_children)
    end
end
