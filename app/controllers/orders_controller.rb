class OrdersController < ApplicationController
  before_action :authenticate_user!

  def add_to_order
		# binding.pry
	  if session[:order_id] == nil || Order.find(session[:order_id]).finalized == true
		  create_order
			binding.pry
	  else
      @order = Order.find(session[:order_id])
    end

    dish = Dish.find(params[:dish_id])
    @order.add(dish, dish.price)
    flash[:notice] = "Successfully added to order"
    redirect_back(fallback_location: root_path)
  end

  private

  def create_order
    order = Order.create(user: current_user)
    session[:order_id] = order.id
    @order = Order.find(session[:order_id])
  end
end
