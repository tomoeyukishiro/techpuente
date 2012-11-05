#SCENARIO: LOGIN TO WEBSITE

Given /I am not logged in/ do
end

Given /that I dont have an account for the website/ do

end


Given /^I am the registered user "(.+)"$/ do |e|
  params = {
    "email"=> e,
    "password"=>"123456",
    "password_confirmation"=>"123456"
  }
  @user = User.create(params)
end

When /^I login with valid credentials$/ do
  steps %Q{
    When I fill in "email" with "#{@user.email}"
    And I fill in "password" with "123456"
    And I press "Log in"
  }
end

When /^I finish registering for an account$/ do
  steps %Q{
    When I fill in "user_email" with "user@gmail.com"
    And I fill in "user_first_name" with "FirstUser"
    And I fill in "user_last_name" with "FirstUser"
    And I fill in "user_password" with "123456"
    And I fill in "user_password_confirmation" with "123456"
    And I press "Create Account"
  }
end

