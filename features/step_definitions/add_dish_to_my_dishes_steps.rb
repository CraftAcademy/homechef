When(/^I upload an image called "([^"]*)"$/) do |image|
	attach_file Rails.root.join("spec/fixture/#{image}")
end

And(/^they are logged in$/) do
	steps %q{
		When I am on the "landing" page
		And I click "Login"
		Then I fill in "Email" with "kristoffer.user@homechef.com"
		And I fill in "Password" with "password"
		And I click "Log in" button
	}
end