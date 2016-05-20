Feature: Test shearing data by socail page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test shearing data by socail success
    Given I am not connected
    When I navigate to "/news"
    Then I click on the button "div > div > div:nth-child(2) > div > div:nth-child(2) > div.wrap-text-webzine > a"
    Then I should see the field "p.cetner-block"
    #Then I click on the button ".pluginButtonLabel"