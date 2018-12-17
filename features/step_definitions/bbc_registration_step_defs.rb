Given("I am on the BBC home page") do
  bbc_homepage.visit_home_page
end

And("I move to the sign in page") do
  bbc_homepage.sign_in
end

When("I proceed to register") do
  sign_in.click_register
end

And("I select I am over 13") do
  age_page.click_over_13
end

When("I input my DOB") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details a@{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
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
