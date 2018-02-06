class ProductsController < ApplicationController
	def index
		@product = Product.all

	end
    
    def new
    	@product = Product.new
    end

    def edit
    	@product = Product.find(params[:id])
    end

    def create
    	@product = Product.new(product_params)
    	if @product.save
    		redirect_to @product
    	else
    		render 'new'
    	end
    end

    def show
    	@product = Product.find(params[:id])
    end

    def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			flash[:success] = "Customer was successfully updated."
			redirect_to products_path
		else
			render 'edit'
		end
	end
    
    def destroy
    	@product = Category.find(params[:id])
        @product.destroy
 
         redirect_to products_path
    end
    
    
    private

    def product_params
    	params.require(:product).permit(:code,:product_name,:unit_price,:sku,:category_id,:product_category)
    end

end
