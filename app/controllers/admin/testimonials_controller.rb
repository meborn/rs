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

	def edit
		@testimonial = Testimonial.find(params[:id])
	end

end