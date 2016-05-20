Feature: Test login any page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test login any page success
    Given I am not connected
    When I navigate to "login"
    When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
    Then I click on the button ".btn_login"
    Then I should see the button ".bert-container"