# Example Repository to test out using cucumber,Ruby and Selenium Webdriver

***Installation***
1. Clone the Repository using git@github.com:JellyfishGroup/ruby_cucumber.git
2. Open the terminal and naviagate to the base folder the project was cloned into
3. Ensure you have the Bundler installed.  If not, install info here  <https://bundler.io/>
4. Once installed run the following command in the terminal: `bundle install`
5. This should install the gems required to run the project

***Executing the tests***

Once the project dependencies have been installed, run a test to verify all is well.

To do this run the following command line instruction `bundle exec cucumber`
You should see the following if everything runs as expected.

```
Feature: Contact us
  Test both routes to selecting and completing the site contactus.

  Background:                                              # features/home_page.feature:5
    Given I vist "https://jellyfish-test.jellyfish.co.uk/" # features/step_definitions/home_page.rb:1

  Scenario: Verify home page has loaded                                            # features/home_page.feature:8
    Then I can see the footer has loaded                                           # features/step_definitions/home_page.rb:5
    And the copyright text of "© Copyright Jellyfish Group 1999-2018" is displayed # features/step_definitions/home_page.rb:9

1 scenario (1 passed)
3 steps (3 passed)
0m6.396s
```
