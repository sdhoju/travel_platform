class TripController < ApplicationController
  def create
    @trip = trip.new(trip_params)
  end

  def read
  end

  def update
  end

  def delete
  end

end
