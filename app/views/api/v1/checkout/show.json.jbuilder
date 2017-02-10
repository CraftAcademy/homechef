json.status 'success'
json.message 'Thank you for your order <3'
json.order_items @order.shopping_cart_items.each do |item|
  json.name item.item.name
  json.price item.item.price
  json.quantity item.item.quantity
  json.id item.item.id
  json.ready_time item.item.ready_time.to_formatted_s(:short)
end
json.total @order.total