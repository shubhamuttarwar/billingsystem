class CategoriesController < ApplicationController
	def index
    	@category = Category.all.order("updated_at DESC")
    end

	def new
		@category = Category.new
	end
    
    def edit
	@category = Category.find(params[:id])

	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to @category
		else
			render 'new'
		end
	end

	
    def show
       @category = Category.find(params[:id])
    end

    def update
		@category = Category.find(params[:id])

		if @category.update(category_params)
			flash[:success] = "Customer was successfully updated."
			redirect_to categories_path
		else
			render 'edit'
		end
	end
    
    def destroy
    	@category = Category.find(params[:id])
        @category.destroy
 
         redirect_to categories_path
    end

	private

	def category_params
		params.require(:category).permit(:categoryname)
	end
end
