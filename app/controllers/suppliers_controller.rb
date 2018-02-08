class SuppliersController < ApplicationController
	def index
    	@supplier = Supplier.search(params[:search])
    end

    def show
    	@supplier = Supplier.find(params[:id])
    end

	def new
		@supplier = Supplier.new
	end

	def edit
		@supplier = Supplier.find(params[:id])
	end

	def create
		@supplier = Supplier.new(supplier_params)

		if @supplier.save
			flash[:success] = "Customer was successfully created."
			redirect_to suppliers_path
		else
			render 'new'
		end
	end

	def update
		@supplier = Supplier.find(params[:id])

		if @supplier.update(customer_params)
			flash[:success] = "Customer was successfully updated."
			redirect_to suppliers_path
		else
			render 'edit'
		end
	end
    
    def destroy
    	@supplier = Supplier.find(params[:id])
    	@supplier.destroy
        flash[:danger] = "Customer was deleted successfully."
    	redirect_to suppliers_path
    end

	private

	def supplier_params
		params.require(:supplier).permit(:firstname,:lastname,:phone,:address)  
	end
end
