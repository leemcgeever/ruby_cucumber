@homepage
Feature: Home Page tests
  verify the footer has loaded correctly (basic test for framework)
  complete the home page footer contact us form (not submitted due to recaptcha)
  navigate to and complete the home page footer contact us form (not submitted due to recaptcha)

Background:
  Given I vist the home page

Scenario: Verify home page has loaded
  Then I can see the footer has loaded
  And the copyright text of "© Copyright Jellyfish Group 1999-2018" is displayed

Scenario: site visitors can complete the home page footer contact us form
  When I complete the contact form with:
    | contactname   | Contact Page User                       |
    | email         | email@email.com                         |
    | phone         | 01273123456                             |
    | company_name  | Company Name                            |
    | message       | This is a test contact us form message  |
  Then I can verify the form is complete

Scenario: verify that site visitors can navigate to the contact us from via the site sidebar
  When I navigate to the contact form using the sidebar link
  Then I am on the "Contact Us" page
