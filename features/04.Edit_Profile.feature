Feature: Test User is logged in page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test User is logged page
    When I navigate to "login"
    #Then I click on the button "#top-left > ul > li > a"
    When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
    When I navigate to "/profile"
    Then I click on the button ".btn-profile-black"
    Then I click on the button "#en"
    Then I click on the button "#updateProfile"