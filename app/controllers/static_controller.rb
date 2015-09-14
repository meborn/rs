class StaticController < ApplicationController
  def index
  	@imagebar = [
  		{
  			title: 'Ryno Wire Caddy',
  			ipath: 'index/rs_full_2.jpg'
  		},
  		{
  			title: 'Ryno Vise',
  			ipath: 'index/rs_full_4.jpg'
  		},
  		{
  			title: 'Ryno Vise',
  			ipath: 'index/rs_full_3.jpg'
  		}
  	]
  	@testimonials = Testimonial.all
  end

  def about
    @videos = Video.all
    @testimonials = Testimonial.all
  end

  def contact
  end
end
