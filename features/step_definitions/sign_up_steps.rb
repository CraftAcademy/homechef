When(/^I enter my email in the "([^"]*)" field$/) do |field_name|
	fill_in "Email", with: :email
end

And(/^I enter my password in the "([^"]*)" field$/) do |field_name|
	fill_in "Password", with: :password
end

And(/^I click the "([^"]*)" button$/) do |button|
	click_button button
end