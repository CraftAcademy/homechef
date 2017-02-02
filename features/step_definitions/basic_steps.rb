Then(/^show me the page$/) do
  save_and_open_page
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in field, with: text
end

And(/^that there is a user logged in with an email of "([^"]*)"$/) do |email|
  FactoryGirl.create(:user, email: email)
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end

When(/^I (?:am on|go to) the "([^"]*)" page$/) do |page|
  case page
    when 'landing'
      visit root_path

    when 'Meatballs'
      id = Dish.find_by(name: 'meatballs').id
      visit "/dishes/#{id}"

    when 'Checkout'
      visit checkout_index_path

		when 'Add dish to my dishes'
			# steps %{
			# 	And they are logged in with email "email@random.com"
			# }
			user = User.last
			binding.pry
			sign_in(user)
			current_user = user
			binding.pry
			visit new_user_dish_path(current_user)
  end
end