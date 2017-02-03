class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
	end

	def create
		binding.pry
		@user_dish = Dish.create(name: params[:name], description: params[:description],
											 price: params[:price], portions: params[:portions],
											 pickup_time: params[:pickup_time], user: current_user.id)
		User.update(dish: @user_dish.id).where(id: current_user.id)
		redirect_back(fallback_location: user_dish_path(dish.id))
		flash[:notice] = "#{@user_dish.name} successfully added to your dishes"
	end

end
