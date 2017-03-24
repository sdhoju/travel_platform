class TransactionsController < ApplicationController
 def show
    @transaction = Transaction.find(params[:id])
  end
def new 

end
def create
 @transaction = Transaction.new(params[:transaction_params])
 
 if @transaction.save
  redirect_to @transaction
  else
  render "new"
  end
end

private
  def transaction_params
    params.require(:transaction).permit(:trans_item, :trans_num)
  end

end
