Feature: Test add favorite page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test favorite success
    Given I am not connected
    Then I click on the button "#news > div > div.news-home > ul > li:nth-child(1) > div > div.caption > div > p > a.heart.pull-right.unlike.unlike563feda701f64d594be68747 > span"
    Then I should see text "Login"
    When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
    Then I click on the button ".btn_login"
