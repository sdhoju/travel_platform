class RegistrationFeesController < ApplicationController
def index
 	 @trip = Trip.find(params[:trip_id])
    @registration_fees = @trip.registration_fees.all
  end
  def new
   @trip = Trip.find(params[:trip_id])
    @registration_fees = @trip.registration_fees.new
  end
  def show
  	 @trip = Trip.find(params[:trip_id])
  	 @registration_fee = @trip.registration_fees.find(params[:id])
  	end
 def create
    @trip = Trip.find(params[:trip_id])

    @registration_fee =@trip.registration_fees.create(registration_fee_params)
    redirect_to trip_path(@trip)
  end
   def destroy
   	@trip = Trip.find(params[:trip_id])
    @registration_fee = @trip.registration_fees.find(params[:id])
    @registration_fee.destroy
    redirect_to trip_path(@trip)
  end
 private
  def registration_fee_params
    params.require(:registration_fee).permit(:name, :amount) 
  end
end
