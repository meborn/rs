class Admin::TestimonialsController < ApplicationController
	before_action :authenticate_admin!
	
	def index
		@testimonials = Testimonial.all

	end

	def show
		@testimonial = Testimonial.find(params[:id])
	end

	def new
		@testimonial = Testimonial.new
	end

	def create
		@testimonial = Testimonial.new(testimonial_params)
		if @testimonial.save
			redirect_to admin_testimonial_path(@testimonial)
		else
			render 'new'
		end
	end

	def edit
		@testimonial = Testimonial.find(params[:id])
	end

	private

	def testimonial_params
		params.require(:testimonial).permit(:name, :city, :state, :content, :company)
	end

end