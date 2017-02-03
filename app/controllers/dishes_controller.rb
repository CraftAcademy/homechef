class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
		binding.pry
		redirect_to new_user_dish_path(current_user)
	end

end
