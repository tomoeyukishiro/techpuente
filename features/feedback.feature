Feature: ratings for each module

    As an user
    So that I can help admins improve the module
    I want to be able to give feedback after completing each module

Scenario: Give Ratings
    Given I am on the current module
    When I give ratings for the current module
    Then I should be able to proceed to the next module

Scenario: Provide Comments
    Given I am on the current module
    When I provide comments for the current module
    Then I should be able to proceed to the next module
