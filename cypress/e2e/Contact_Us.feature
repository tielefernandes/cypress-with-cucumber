
@contact-us @regression
Feature: WebdriverUniversity - Contact Us Page

Feature Description Example

        Background: Pre conditions
            Given I navigate to the webdriveruniversity homepage
             When I click on the contact us button

        Scenario: Valid Contact Us Form Submission
              And I type a first name
              And I type a last name
              And I enter an email address
              And I type a comment
              And I click on the submit button
             Then I should be presented with a successful contact us submission message

        Scenario: Invalid Contact Us Form Submission
              And I type a first name
              And I type a last name
              And I type a comment
              And I click on the submit button
             Then I should be presented with a unsuccessful contact us submission message

        Scenario: Valid Contact Us Form Submissiona - Using specific data
              And I type specific first name "Sarah"
              And I type specific last name "Woods"
              And I type a specific email address "sarah_woods101@mail.com"
              And I type a specific word "hello123" and number 6788 within the comment input field
              And I click on the submit button
             Then I should be presented with a successful contact us submission message
        
        @smoke
        Scenario Outline: Validate contact us page
              And I type a first name '<firstName>' and a last name '<lastName>'
              And I type a '<emailAddress>' and a comment '<comment>'
              And I click on the submit button
             Then I should be presented with header text '<message>'

        Examples:
                  | first  | lastName | emailAddress        | comment    | message                      |
                  | John   | Jones    | john_jones@mail.com | Hello Word | Thank You for your Message!  |
                  | Rachel | Green    | rachel_green        | Hi, Ross!  | Error: Invalid email address |

