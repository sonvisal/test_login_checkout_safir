Feature: Test logout  page

    As a [role]
    I want [feature]
    So that [benefit]

    @dev
    Scenario: logout success
        Given I am not connected
        When I navigate to "/login"
        When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
        Then I should see class ".dropdown-toggle"
        Then I click on the button  ".glyphicon-user"
        Then I click on the button "#logout"
        Then I navigate to "/login"
