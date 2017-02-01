class DishesController < ApplicationController


	def show
    @dish = Dish.find(params[:id])
	end

	def my_dishes
		visit users_dishes_path
	end

	def new
		# go here and use the template below: /users/:user_id/dishes/new
		# visit 'dishes/new.html.erb'
		redirect_to new_user_dish
	end

end
