@css
Feature: CSS site
    Scenario: Visit site

        Given I am at home page
        Then I should see "home" button
        Then I should see "0x00-translucent-borders" button
        Then I click it
        And I should see the url turn to "/0x00-translucent-borders"
