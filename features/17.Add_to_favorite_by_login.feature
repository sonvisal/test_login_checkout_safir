Feature: Test add favorite with login page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test add favorite with login success
    Given I am not connected
    Then I click on the button ".fa-heart-o"
    When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
    #Then I should see url "profile"
    Then I click on the button ".btn_login"