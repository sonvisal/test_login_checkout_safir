Feature: Test login by socail page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test login by socail success
    Given I am not connected
    When I navigate to "login"
    Then I click on the button "#insta-login"