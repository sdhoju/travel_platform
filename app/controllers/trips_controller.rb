class TripsController < ApplicationController
#before_action :set_trip, only: [:show, :edit, :update, :destroy, :download]
before_action :authenticate_user!

 def index
    @trips = Trip.all
  end
 def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = current_user.trips.build
  end
  def edit
      @trip = Trip.find(params[:id])
  end

def create
  @trip = current_user.trips.build(trip_params)
 
 if @trip.save
  redirect_to @trip
else
  render 'new'

end
end
def update
  @trip = Trip.find(params[:id])
 
  if @trip.update(trip_params)
    redirect_to @trip
  else
    render 'edit'
  end
end

 def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path
  end
    def download
  
    send_file "Excel/trip_#{id}.xlsx", :type=>"application/xlsx", :x_sendfile => true
  end
 private

  def id
      resource,id = request.path.split('/')[1,2]
    @name=id
  end

  def trip_params
    params.require(:trip).permit(:place, :purpose)
  end
end
