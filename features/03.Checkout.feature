Feature: Test checkout redirected to the bank website page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test checkout redirected to the bank websitepage
    Then I click on the button "#news > div > div.news-home > ul > li:nth-child(1) > div > div.caption > a"
    Then I click on the button ".btn-panel-card"
    Then I click on the button ".dropdown_checkout"
    Then I click on the button "#proccedOrder"
    When I try to connect with username "mama@gmail.com" and password "root"
    Then I click on the button ".btn_login"
    Then I click on the button ".btn_edit"
    Then I fill the field  "#email" with value "noolab@gmail.com"
    Then I fill the field  "#address" with value "Phnom Penh"
    Then I fill the field  "#phone" with value "+88593654734"
    Then I click on the button ".btn_validation"
    Then I click on the button ".btn-con-server"
    Then I should see the title "confirmorder2"