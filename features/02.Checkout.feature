Feature: Test checkout by remember page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test checkout page
    Given I am not connected
    When I navigate to "/"
    Then I click on the button "#news > div > div.news-home > ul > li:nth-child(1) > div > div.caption > a"
    Then I click on the button ".btn-panel-card"
    Then I click on the button ".img-shopcart"
    Then I click on the button ".btn-chechout"
    When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
    Then I click on the button ".btn_login"