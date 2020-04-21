@graphics
Feature: See WebGL
    Scenario Outline: WebGL
        Given I am at welcome page
        Then I should see nav menu "<menu>"

        When I click the menu item
        Then I should go to "<path>"

        Examples:
            | menu | path |
            | Home | /    |
            | box  | /box |

