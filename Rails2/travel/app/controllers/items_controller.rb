class ItemsController < ApplicationController
  def create
    @transaction = Transaction.find(params[:transaction_id])
    @item = @transaction.items.create(item_params)
    redirect_to transaction_path(@transaction)
  end

  private
    def item_params
      params.require(:item).permit(:item_name, :item_amount)
    end
end