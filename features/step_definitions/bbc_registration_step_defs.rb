Given("I am on the BBC home page") do
  bbc_homepage.visit_home_page
end

And("I move to the sign in page") do
  bbc_homepage.sign_in
end

When("I proceed to register") do
  sign_in.click_register
end

And("I select I am over {int}") do |int|
  age_page.click_over_13
end

When("I input my DOB") do
  dob_page.input_day
  dob_page.input_month
  dob_page.input_year
  dob_page.click_continue
end

When(/^I input the necessary details with the password details a@(.*)$/) do |password|
    @password = password
    registration_page.input_email
    registration_page.input_postcodes
    registration_page.input_password("#{password}")
    sleep 3
    registration_page.select_gender
    registration_page.no_updates
    registration_page.click_register
end

Then("I receive the corresponding error Sorry, that password is too short. It needs to be eight characters or more.") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details abcd{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn{string}s hard to guess.") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details abcdefgh") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn{string}t a letter.") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn't valid. Please include a letter.") do
  pending # Write code here that turns the phrase above into concrete actions
end
