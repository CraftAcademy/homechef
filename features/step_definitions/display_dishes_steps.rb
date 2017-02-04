Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish, hash)
  end
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

    when 'Edit profile'
      visit edit_user_registration_path
  end
end
