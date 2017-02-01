class DishesController < ApplicationController


	def show
    @dish = Dish.find(params[:id])
	end

	def my_dishes
		visit users_dishes_path
	end

	def new
		redirect_to new_user_dish
	end

end
