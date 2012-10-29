#SCENARIO: LOGIN TO WEBSITE

Given /that I have an account for the website/ do
end

When /I fill in "email" with "user@gmail.com"/ do
end

And /I fill in "password" with "123456"/ do
end

And /I press "Sign_In"/ do
end

Then /I should be on the main page/ do
end

Then /I should see "FirstUser"/ do
end

#SCENARIO: LOGIN TO WEBSITE FROM MODULE PAGE

Given /that I have an account for the website/ do
end

And /I am on the module page/ do
end

When /I follow "Not_signed_in"/ do
end

Then /I should see "Sign In"/ do
end

When /I fill in "email" with "user@gmail.com"/ do
end

And /I fill in "password" with "123456"/ do
end

And /I press "Sign_In"/ do
end

Then /I should be on the modules page/ do
end

And /I should see "Hello FirstUser"/ do
end

#SCENARIO: SIGN IN

Given /that I don't have an account for the website/ do
end

And /I am on the home page/ do
end

When /I see "Sign_Up"/ do
end

Then /I should see "Register"/ do
end

When /I fill in "email" with "user@gmail.com"/ do
end

And /I fill in "name" with "FirstUser"/ do
end

And /I fill in "password" with "123456"/ do
end

And /I fill in "confirm_password" with "123456"/ do
end

And /I press "Sign_Up"/ do
end

Then /I should be on the home page/ do
end

And /I should see "Hello FirstUser"/ do
end

#SCENARIO: SIGN IN FROM MODULE PAGE

Given /that I don't have an account for the website/ do
end

And /I am on the module page/ do
end

When /I follow "Not_signed_in"/ do 
end

Then /I should see "Register"/ do
end

When /I fill in "email" with "user@gmail.com"/ do
end

And /I fill in "name" with "FirstUser"/ do
end

And /I fill in "password" with "123456"/ do
end

And /I fill in "confirm_password" with "123456"/ do
end

And /I press "Sign_Up"/ do
end

Then /I should be on the module page/ do
end

And /I should see "Hello FirstUser"/ do
end


