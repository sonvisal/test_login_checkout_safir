Feature: Test register page

    As a [role]
    I want [feature]
    So that [benefit]

    @dev
    Scenario:  check register
        When I navigate to "/login"
        Then I should see the button ".btn-register"
        Then I should see the field "#username"
        Then I should see the field "#first_name"
        Then I should see the field "#last_name"
        Then I should see the field "#country"
        Then I should see the field "#city"
        Then I should see the field "#re_email"
        Then I should see the field "#re_password"
        Then I should see the button "#log_uname"

    @dev
    Scenario: register success
        When I navigate to "/login"
        Then I fill the field "#username" with value "daratest"
        Then I fill the field "#first_name" with value "dara"
        Then I fill the field "#last_name" with value "test"
        Then I fill the field "#country" with value "cambodia"
        Then I fill the field "#city" with value "phnom penh"
        Then I fill the field "#re_email" with value "dara10@gmail.com"
        Then I fill the field "#re_password" with value "dara10@gmail.com"
        Then I click on the button "#log_uname"