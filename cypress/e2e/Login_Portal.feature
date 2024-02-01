@login @regression
Feature: WebdriverUniversity - Login Portal Page

        Scenario Outline: Validate Login Submission
            Given I navigate to the webdriveruniversity homepage
             When I click on the login portal button
              And I type a '<username>' and a '<password>'
              And I click on the login button
             Then I should be presented with a '<message>'
        Examples:
                  | username    | password     | message              |
                  | Value 1     | Value 2      | validation failed    |
                  | webdriver   | webdriver123 | validation succeeded |
                  | webdriverre | webdriver    | validation failed    |
