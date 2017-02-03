class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
		# update both user and dish model
		# redirect to fallback path 'new'
	end

end
