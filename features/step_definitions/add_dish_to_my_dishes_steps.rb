When(/^I upload an image called "([^"]*)"$/) do |image|
	attach_file Rails.root.join("spec/fixture/#{image}")
end