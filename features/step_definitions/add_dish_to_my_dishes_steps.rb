When(/^I upload an image called "([^"]*)"$/) do |image|
	attach_file Rails.root.join("spec/fixture/#{image}")
end

And(/^they are logged in with "([^"]*)" and password "([^"]*)"$/) do |email, password|
	user = User.find_for_authentication(email: email)
	is_user = user.valid_password?(password) ? user : nil
	if is_user != nil
		@current_user = User.find_by_id(session[user: user])
	end
end