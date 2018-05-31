@homepage
Feature: Home Page tests
  verfiy the footer has loaded correctly (basic test for framework)
  verify the home page contact us form can be completed (not submitted)

Background:
  Given I vist "https://jellyfish-test.jellyfish.co.uk/"

Scenario: Verify home page has loaded
  Then I can see the footer has loaded
  And the copyright text of "© Copyright Jellyfish Group 1999-2018" is displayed

@lm
Scenario: site visitors can complete the home page contact us form
  When I complete the contact form with:
  | contactname   | Contact Page User                       |
  | email         | email@email.com                         |
  | phone         | 01273123456                             |
  | company_name  | Company Name                            |
  | message       | This is a test contact us form message  |
  Then I can verify the form is complete
