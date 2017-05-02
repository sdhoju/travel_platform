class OtherExpensesController < ApplicationController
def index
 	 @trip = Trip.find(params[:trip_id])
    @other_expenses = @trip.other_expenses.all
  end
  def new
   @trip = Trip.find(params[:trip_id])
    @other_expenses = @trip.other_expenses.new
  end
  def show
  	 @trip = Trip.find(params[:trip_id])
  	  @other_expense = @trip.other_expenses.find(params[:id])
  	end
 def create
    @trip = Trip.find(params[:trip_id])

    @other_expense =@trip.other_expenses.create(other_expense_params)
    redirect_to trip_other_expenses_path(@trip)
  end
    def edit
        @trip = Trip.find(params[:trip_id])
        @other_expense = @trip.other_expenses.find(params[:id])
  end
 def update
    @trip = Trip.find(params[:trip_id])
    @other_expense = @trip.other_expenses.find(params[:id])
    if @other_expense.update(other_expense_params)
        redirect_to @other_expense
    else
      render 'edit'
    end
  end
   def destroy
   	@trip = Trip.find(params[:trip_id])
    @other_expense = @trip.other_expenses.find(params[:id])
    @other_expense.destroy
    redirect_to trip_other_expenses_path(@trip)
  end
 private
  def other_expense_params
    params.require(:other_expense).permit(:day, :description, :amount) 
  end
end
