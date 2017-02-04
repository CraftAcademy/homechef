class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
	end

	def create
		@user_dish = Dish.create(name: params[:name], description: params[:description], price: params[:price], portions: params[:portions], ready_time: params[:ready_time], user: current_user)
		redirect_back(fallback_location: new_user_dish_path(root_path))
		flash[:notice] = "#{@user_dish.name} successfully added to your dishes"
	end
end
