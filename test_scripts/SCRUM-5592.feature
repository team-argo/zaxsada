@Healthcare_Support
@Contact_Page
Feature: Global Site Navigation and Utilities

  Scenario: Access key sections and utilities across the site
    Given the user is on any page of the site
    When the user looks at the top navigation bar
    Then the navigation bar is displayed and includes the following primary links:
      | Link Name |
      | Home      |
      | About     |
      | Services  |
      | Contact   |
    And the navigation bar provides access icons for site search functionality
    And the navigation bar provides access icons for profile login/access.


Feature: Health Journey Hero Banner Display

  Scenario: Introduce service commitment upon landing
    Given the user navigates to the main healthcare support page
    When the page content finishes loading
    Then a prominent title 'We're Here to Support Your Health Journey' is displayed in the hero section
    And a corresponding illustration representing health support or connectivity is visible
    And a primary call-to-action button labeled 'Let's connect' is present to engage further.


Feature: Frequently Asked Questions (FAQ) Section Layout

  Scenario: Identify the frequently asked questions section header
    Given the user scrolls past the main introductory banner
    When they reach the designated FAQ section
    Then a distinct heading 'FAQ' is displayed
    And introductory text relevant to the frequently asked questions is presented.


Feature: FAQ Accordion Interaction

  Scenario: User seeks answers to common inquiries by interacting with an accordion item
    Given the user is viewing the fully loaded FAQ section
    When the user clicks on the accordion item titled 'What if I need care outside of regular hours?'
    Then the chevron icon for that item updates to indicate the open (expanded) state
    And the corresponding answer text is revealed:
      """
      Some of our locations offer extended or weekend hours. For urgent after-hours needs, we can direct you to the nearest appropriate care option.
      """


Feature: Contact Form Section Header and Instruction

  Scenario: Direct user attention to the contact submission form
    Given the user scrolls past the FAQ section
    When they are prompted to connect
    Then a large heading 'Let's Connect!' is prominently displayed
    And supporting instructional text guiding the user to fill out the form is visible.


Feature: User Contact Form Submission

  Scenario: Successful submission of user contact details and inquiry reason
    Given the user is viewing the 'Let's Connect!' contact form
    When the user fills in the required details:
      | Field Name  | Value |
      | First Name  | John  |
      | Last Name   | Doe   |
      | Gender      | Male  |
    And the user checks the inquiry reason checkbox labeled 'Insight'
    And the user clicks the 'submit' button
    Then the form data is processed successfully
    And a submission confirmation message is displayed to the user (or a redirect to a confirmation page is initiated).


Feature: Global Footer Content and Legal Access

  Scenario: Access contact information, mission, and legal details
    Given the user scrolls to the bottom of the page
    When the global footer section is displayed
    Then the Main Office contact information (address, phone, or email) is clearly listed
    And a concise organizational mission statement is present
    And the following essential legal links are accessible:
      | Legal Link     |
      | Privacy Policy |
      | Terms of Use   |