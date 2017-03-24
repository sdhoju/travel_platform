class TransactionsController < ApplicationController
 
 def index
    @transactions = Transaction.all
  end
 def show
    @transaction = Transaction.find(params[:id])
  end
 

  def new
  end
 def create
  @transaction = Transaction.new(transaction_params)
 
  @transaction.save
  redirect_to @transaction
end
 private
  def transaction_params
    params.require(:transaction).permit(:item, :amount)
  end

end
