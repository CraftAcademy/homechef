class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
		render "new"
	end

end
