class TransactionsController < ApplicationController
 
 def index
   @trip = Trip.find(params[:trip_id])
    @transactions = @trip.transactions.all
  end
  def new
   @trip = Trip.find(params[:trip_id])
    @transactions = @trip.transactions.new
  end
  def show
     @trip = Trip.find(params[:trip_id])
      @transaction = @trip.transactions.find(params[:id])
    end
 def create
    @trip = Trip.find(params[:trip_id])
    @transaction =@trip.transactions.create(transaction_params)
    redirect_to trip_path(@trip)
  end
  def update
    @trip = Trip.find(params[:trip_id])
  @transaction = @trip.transactions.find(params[:id])
 
  if @transaction.update(transaction_params)
    redirect_to @transaction
  else
    render 'edit'
  end
end
   def destroy
    @trip = Trip.find(params[:trip_id])
    @transaction = @trip.transactions.find(params[:id])
    @transaction.destroy
    redirect_to trip_path(@trip)
  end


 
 private
  def transaction_params
    params.require(:transaction).permit(:item, :amount, :dest, :dcategory_id)
  end

end
