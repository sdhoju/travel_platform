class TransportationsController < ApplicationController

 def create
    @trip = Trip.find(params[:trip_id])

    @transportation =@trip.transportations.create(transportation_params)
    redirect_to trips_path(@trip)
  end
   def destroy
   	@trip = Trip.find(params[:trip_id])
    @transportation = @trip.transportations.find(params[:id])
    @transportation.destroy
 
    redirect_to trip_path(@trip)
  end
 private
  def transportation_params
    params.require(:transportation).permit(:from, :to, :mileage, :amount) 
  end

end
