class Admin::ProductImagesController < ApplicationController
	def new
		@product_image = ProductImage.new
	end

	def create
		@product_image = ProductImage.new(product_image_params)
		@product = Product.find(params[:product_id])
		@product_image.product = @product
		if @product_image.save
			redirect_to admin_product_path(@product)
		else
			render :new
		end
	end

	private

	def product_image_params
		product_image_strong_params = [:image]
		params.require(:product_image).permit(product_image_strong_params)
	end
end
