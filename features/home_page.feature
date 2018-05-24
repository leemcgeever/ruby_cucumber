@homepage
Feature: Contact us
  Test both routes to selecting and completing the site contactus.

  Background:
      Given I vist "https://jellyfish-test.jellyfish.co.uk/"

  Scenario: Verify home page has loaded
    Then I can see the footer has loaded
    And the copyright text of "© Copyright Jellyfish Group 1999-2018" is displayed


  # Scenario: site visitors can complete the home page contact us form
  #   Then I should be able to complete the contact form with:
  #   | contactname   | Contact Page User                       |
  #   | email         | email@email.com                         |
  #   | phone         | 01273123456                             |
  #   | company_name  | Company Name                            |
  #   | message       | This is a test contact us form message  |
