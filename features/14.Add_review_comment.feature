Feature: Test add review comment page

  As a [role]
  I want [feature]
  So that [benefit]


  @dev
  Scenario: Test add review comment success
    Given I am not connected
    When I navigate to "login"
    When I try to connect with username "testing@gmail.com" and password "Sonvisal15031994"
    When I navigate to "/category/Fragrance"
    Then I click on the button "div:nth-child(5) > div:nth-child(6) > div > div.all-product > ul > li:nth-child(1) > div > div.hold-quickview"
    Then I fill the field "#comment" with value "this product is good quality"
    Then I click on the button ".yellow-star"
    Then I click on the button "#addreview"
    Then I should see class ".hold_feedback"