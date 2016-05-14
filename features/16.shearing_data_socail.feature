Feature: Test shearing data by socail page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test shearing data by socail success
    Given I am not connected
    When I navigate to "/webzinelisting"
    Then I click on the button "section > div > div > div:nth-child(2) > div > div:nth-child(1) > a"
    Then I click on the button ".pluginButtonLabel"
