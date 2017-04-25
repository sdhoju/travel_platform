class TransportationsController < ApplicationController
 def index
 	 @trip = Trip.find(params[:trip_id])
    @transportations = @trip.transportations.all
  end
  def new
   @trip = Trip.find(params[:trip_id])
    @transportations = @trip.transportations.new
  end
  def show
  	 @trip = Trip.find(params[:trip_id])
  	  @transportation = @trip.transportations.find(params[:id])
      @imageable = @transportation
      @receipts =@imageable.receipts
      @receipt = Receipt.new
  	end
 def create
    @trip = Trip.find(params[:trip_id])

    @transportation =@trip.transportations.create(transportation_params)
    redirect_to trip_path(@trip)
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
