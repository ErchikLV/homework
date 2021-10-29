@registration
Feature: As a visitor I want to register using the registration form
  Background:
    Given I am on the registration page

  @wip
  Scenario: Registation form positive test case
    When I fill the first name input field with "Eriks"
    And I fill the last name input field with "Testing"
    And I fill the email input field 
    And I fill the address input field with "Imantas iela 99-228"
    And I fill the city input field with "Daugavpils"
    And I select "Anglesey" from the region dropdown
    And I fill the zip code input field with "LV-3256"
    And I fill the login input field
    And I fill the password input field with "P@ssw0rd"
    And I fill the password confirm input field with "P@ssw0rd"
    And I select "yes" radio field
    And I select "privacy policy" checkbox
    And I select confirm button
    And I check registration success