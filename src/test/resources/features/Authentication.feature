Feature: Login Test

  Scenario: Admin able to login with valid credential
    Given Admin open the Middleman website
    And Click Sign in button
    When Admin input "admin.middleman@gmail.com" as userName and "Admin123$" as password and click login
    Then Admin should be directed to the dashboard page

    Scenario: User able to login with valid credential
      Given User open the Middleman website
      And Click Sign in button
      When User input "shop1.middleman@mail.com" as userName and "shop123" as password and click login
      Then User should be directed to the dashboard page

      Scenario: Admin unable to login with invalid credential
        Given Admin open the Middleman website
        And Click Sign in button
        When Admin input "admin5.middleman@gmail.com" as userName and "Admin123$" as password and click login
        Then Admin not redirected to the dashboard page