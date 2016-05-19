Feature: Test add favorite with login page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test add favorite with login success
    Given I am not connected
    Then I click on the button "#pro563feda701f64d594be68747 > div > a.heart.pull-right.unlike.unlike563feda701f64d594be68747 > span"
    When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
    #Then I should see url "profile"
    Then I click on the button ".btn_login"