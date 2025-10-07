@JIRA_STORY_ABS-1234
Feature: About Us Page Content and Structure

  Background:
    Given the user is authenticated and logged in (if applicable)
    And the user navigates to the "/about-us" URL

  @Navigation
  Scenario: Validate Global Navigation Bar Availability
    Given the user is viewing the About Us page
    When the user interacts with the top navigation bar
    Then the user can click the 'Home' link
    And the user can click the 'About' link
    And the user can click the 'Services' link
    And the user can click the 'Contact' link
    And the search icon is available and functional
    And the profile icon is available and functional

  @Introduction
  Scenario: Display Company Mission and Values in Introductory Section
    Given the introductory section of the About page has loaded
    When the user views the content
    Then a compelling graphic illustrating the healthcare team is displayed
    And detailed paragraphs describing the company's commitment to compassionate care are visible
    And detailed paragraphs describing the company's commitment to innovative care are visible

  @StaffDirectory
  Scenario: Review Key Executive Team Details
    Given the user scrolls down to the 'Key People' section
    When they view the staff directory table
    Then the table must be visibly striped for easy readability
    And the list details staff information using the following headers:
      | Header Name  |
      | Staff Name   |
      | Country      |
      | Time Zone    |
      | Executive Role |

  @Metrics
  Scenario Outline: View Key Company Statistics Metrics
    Given the user reviews the 'Company Statistics' section
    When they look at the <Metric Position>
    Then the value '<Value>' is prominently displayed
    And the descriptor '<Descriptor>' is displayed below the value

    Examples:
      | Metric Position | Value     | Descriptor          |
      | first metric    | 1995      | We started in       |
      | second metric   | 250000+   | Patients Served     |
      | third metric    | 10+       | Locations           |
      | fourth metric   | 4.8/5     | Patient satisfaction |

  @Footer
  Scenario: Validate Global Footer Content and Legal Links
    Given the user scrolls to the bottom of the About Us page
    When they view the global footer
    Then the main office contact details are correctly displayed
    And a brief mission statement is included in the footer
    And the user can access the 'Privacy' legal link
    And the user can access the 'Terms of Use' legal link