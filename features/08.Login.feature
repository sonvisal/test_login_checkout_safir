Feature: Test login any page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test login any page success
    Given I am not connected
    When I navigate to "login"
    #Then I click on the button "#top-left > ul > li > a"
    Then I click on the button ".dropdown"
    When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
    Then I should see url "profile"
    Then I click on the button ".btn_login"