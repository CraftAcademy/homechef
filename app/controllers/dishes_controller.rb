class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
		@user = current_user
		visit "users/#{@user.id}/dishes/new"
	end

end
