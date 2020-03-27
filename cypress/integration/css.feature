@css
Feature: CSS site
    Scenario: Visit site

        Given I am at home page
        Then I should see "home" button
        Then I should see "translucent-borders" button
        Then I click it
        And I should see the url turn to "/translucent-borders"
