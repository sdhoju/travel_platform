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
def excel
   @trip = Trip.find("#{id}") 
  render 'excel'
end

 def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path
  end
    def download 
      new=
    @trip = Trip.find("#{id}") 
    if current_user.id=@trip.user.id 
    if  send_file "Excel/trip_#{@current_user.id}_#{@trip.id}.xlsx", :type=>"application/xlsx", :disposition =>"inline", :x_sendfile => true
    else
      redirect_to @trip
    end
    end
  end
private
def id
      resource,id = request.path.split('/')[1,2]
    @name=id
end

def trip_params
    params.require(:trip).permit(:place, :purpose, :contact, :dept, :phone, :accomp, :tripno, :begindate, :begintime, :enddate, :endtime )
  end
end
