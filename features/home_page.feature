@homepage
Feature: Home Page tests
verfiy the footer has loaded correctly (basic test for framework)
verify the home page footer contact us form displays an error msg when recaptcha not set)
navigate to the contact us form via sidebar and verify correct page loaded

Background:
Given I vist the home page

@smoke
Scenario: Verify home page has loaded
  Then I can see the footer has loaded
  And the copyright text of "© Copyright Jellyfish Group 1999-2018" is displayed

@smoke
Scenario: site visitors see a recaptcha message when completing and submitting the contact form
  When I complete the contact form with:
    | contactname   | Contact Page User                       |
    | email         | email@email.com                         |
    | phone         | 01273123456                             |
    | company_name  | Company Name                            |
    | message       | This is a test contact us form message  |
  When I attempt to submit my contact details without completing the recaptcha
  Then I should see an appropriate error message

Scenario: verify that site visitors can navigate to the contact us from via the site sidebar
  When I navigate to the contact form using the sidebar link
  Then I am on the "Contact Us" page
