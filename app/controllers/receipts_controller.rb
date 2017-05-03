class ReceiptsController < ApplicationController
before_filter :load_imageable
  def index
    @receipts = @imageable.receipts.all
  end

  def new
  		@receipt = @imageable.receipts.new
  end
  def show
  		@receipt = @imageable.receipts.find(params[:id])
  end
 
  def create
  		@receipt = @imageable.receipts.create(receipt_params)
			redirect_to [@tripped, @imageable, :receipts], notice: "The Receipt #{@receipt.name} has been uploaded"
  end

  def destroy
  	@receipt = @imageable.receipts.find(params[:id])
  	@receipt.destroy
  	redirect_to @imageable, notice: "Deleted"
  end

  private
    def load_imageable
    resource, id = request.path.split('/')[1,2]
     @tripped = resource.singularize.classify.constantize.find(id)
     klass =[Transportation,RegistrationFee, OtherExpense,Transaction].detect{|c| params["#{c.name.underscore}_id"]}
     @imageable = klass.find(params["#{klass.name.underscore}_id"])
    end

  def receipt_params
    params.require(:receipt).permit(:name, :attachment, :imageable_type, :imageable_id)
  end

end
