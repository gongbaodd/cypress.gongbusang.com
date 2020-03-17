Feature: Read Posts
    Scenario: Home
        Given I am at home page
        Then I should see title "宫不上叔"

        When I click the first Post
        Then I go to the page with title "宫不上叔"

        When I click the title, I go back to home