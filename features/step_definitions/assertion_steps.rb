Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

Then(/^I should see input of type "([^"]*)" with name "([^"]*)"$/) do |type, name|
  expect(page).to have_css('input[type=' "#{type}" '][name*=' "#{name}" ']')
end

Then(/^I should see a "([^"]*)" placeholder$/) do |id|
  expect(page).to have_selector(:css, "div##{id}")
end


Then(/^I should be on the "landing page$/) do
  expect(page.current_path).to eq root_path
end

Then(/^"([^"]*)" should be added to the last order$/) do |dish_name|
  order = Order.last
  expect(order.shopping_cart_items.last.item.name).to eq dish_name
end

Then(/^there should be "([^"]*)" items on the last order$/) do |count|
  order = Order.last
  expect(order.shopping_cart_items.count).to eq count.to_i
end

Then(/^I should see the stripe button$/) do
  expect(page).to have_css '.stripe-button-el'
end

Then(/^I should see "([^"]*)" on the order confirmation page$/) do |content|
  expect(page).to have_content content
end

Then(/^I should be on the "([^"]*)" page$/) do |current_page|
  if current_page == "landing"
    expect(page.current_path).to eq root_path
  end
end

Then(/^I should be on the main landing page$/) do
  visit root_path
end

Then(/^I should be on the signup page$/) do
  expect(current_path).to eq new_user_registration_path
end

# And(/^a user with "([^"]*)" and "([^"]*)" should be added$/) do |sign_up_email, sign_up_password|
#   Factory.create(:user, sign_up_email, sign_up_password)
# end

