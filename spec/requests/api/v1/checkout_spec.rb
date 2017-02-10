require 'rails_helper'

RSpec.describe Api::V1::CheckoutController, type: :request do
  let(:user) { FactoryGirl.create(:user) }
  let (:dish) { FactoryGirl.create(:dish) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { {HTTP_ACCEPT: 'application/json'}.merge!(credentials) }
  describe 'GET /v1/checkout' do

    it 'should display all the dishes in this order that have not yet payed yet' do
      @order = Order.create(user: user)
      @order.add(dish, dish.price)

      get '/api/v1/checkout', headers: headers
      expect(response_json['order_items']).to eq [{"name"=>"Pizza", "price"=>1.0, "quantity"=>1, "ready_time"=>"10 Jan 16:32"}]
      expect(response.status).to eq 200
    end
  end
end
