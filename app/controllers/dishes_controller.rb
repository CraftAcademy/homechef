class DishesController < ApplicationController
	include Geokit::Geocoders

	def new
	end

	def create
		location = GoogleGeocoder.geocode(params[:address])
		binding.pry
		@user_dish = Dish.create(name: params[:name], description: params[:description], price: params[:price], portions: params[:portions], ready_time: params[:dish][:ready_time], lat:location.lat, lng:location.lng, user: current_user)
		redirect_back(fallback_location: new_user_dish_path(current_user))
		flash[:notice] = "#{@user_dish.portions} portions of #{@user_dish.name} at #{@user_dish.price}$ each successfully added to your dishes"
	end
end
