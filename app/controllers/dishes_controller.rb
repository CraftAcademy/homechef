class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
		binding.pry
		user = current_user
		redirect_to new_user_dish_path(user)
	end

end
