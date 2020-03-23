Feature: See WebGL
    @graphics
    Scenario Outline: WebGL
        Given I am at welcome page
        Then I should see nav menu "<menu>"

        When I click the menu item
        Then I should go to "<path>"

        Examples:
            | menu               | path   |
            | Home               | /      |
            | Three.js - Box     | /box   |
            | Babylon.js - Basic | /basic |

