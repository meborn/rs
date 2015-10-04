class Admin::ProductsController < ApplicationController
	before_action :authenticate_admin!

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@product_image = ProductImage.new
	end

	def new
		@product = Product.new()
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to admin_products_path
		else
			render :new
		end
	end

	private

	def product_params
		params.require(:product).permit(:title, :price, :description)
	end
end
