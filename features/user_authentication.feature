Feature: User Authentication

	As a authenticated user
  	In order continue were I left of
  	I want to be able to login to the web site

Background:
    
	Given the website is up
    	And I am not logged in

Scenario: Log into the website 
	Given that I have an account for the website
    	When I fill in "email" with "user@gmail.com"
    	And I fill in "password" with "123456"
    	And I press "Sign_In"
    	Then I should be on the main page
    	Then I should see "FirstUser"

Scenario: Log into website from module page
    	Given that I have an account for the website
	And I am on the module page
	When I follow "Not_signed_in"
	Then I should see "Sign In"
	When I fill in "email" with "user@gmail.com"
	And I fill in "password" with "123456"
    	And I press "Sign_In"
    	Then I should be on the modules page
	And I should see "Hello FirstUser"
	
Scenario: Sign In 
    	Given that I dont have an account for the website
	And I am on the home page
	When I follow "Sign_Up"
	Then I should see "Register"
	When I fill in "email" with "user@gmail.com"
	And I fill in "name" with "FirstUser"
    	And I fill in "password" with "123456"
	And I fill in "confirm_password" with "123456"
    	And I press "Sign_Up"
    	Then I should be on the home page
	And I should see "Hello FirstUser"
	
Scenario: Sign In from module page
   	Given that I dont have an account for the website
	And I am on the module page
	When I follow "Not_signed_in"
	Then I should see "Register"
	When I fill in "email" with "user@gmail.com"
	And I fill in "name" with "FirstUser"
    	And I fill in "password" with "123456"
	And I fill in "confirm_password" with "123456"
    	And I press "Sign_Up"
    	Then I should be on the module page
	And I should see "Hello FirstUser"
