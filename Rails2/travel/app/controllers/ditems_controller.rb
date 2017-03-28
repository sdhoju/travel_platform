class DitemsController < ApplicationController
 def create
    @transaction = Transaction.find(params[:transaction_id])
    @ditem = @transaction.ditems.create(ditem_params)
    redirect_to transaction_path(@transaction)
  end
 
  private
    def ditem_params
      params.require(:ditem).permit(:dname, :damount)
    end
end
