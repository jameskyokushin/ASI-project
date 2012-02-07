Feature: Creating Clients
	In order to have clients-database
	As a user
	I want to Create them easily
	
	Scenario: Creating a client
		Given I am on the homepage
		when I follow "Sales Calls"
		And I fill the "Client form" with "client info"
		And I press "Create Client"
		Then I should see "Client has been created"
