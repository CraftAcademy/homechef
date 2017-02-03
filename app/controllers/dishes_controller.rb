class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
		# update both user and dish model
		# redirect to fallback path 'new'
	end

	def create
		dish = Dish.create(name: params[:name], description: params[:description],
											 price: params[:price], portions: params[:portions], pickup_time: params[:pickup_time])
	end

end
