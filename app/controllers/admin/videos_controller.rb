class Admin::VideosController < ApplicationController
	before_action :authenticate_admin!
	
	def index
		@videos = Video.all
	end

	def show
		
	end

	def new
		
	end

	def edit
		
	end

end