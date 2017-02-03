class DishesController < ApplicationController

	def show
    @dish = Dish.find(params[:id])
	end

	def new
	end

	def create
		binding.pry
		@user_dish = Dish.create(name: params[:name], description: params[:description], price: params[:price], portions: params[:portions], pickup_time: params[:pickup_time], user: current_user)
		# User.update(dish: @user_dish.id).where(id: current_user.id)
		redirect_back(fallback_location: new_user_dish_path(current_user))
		flash[:notice] = "#{@user_dish.name} successfully added to your dishes"
	end
end
