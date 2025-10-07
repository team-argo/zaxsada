# Gherkin Test Script for Jira Story: Compassionate, Patient-Centered Healthcare Homepage
Feature: Homepage Content and Layout Integrity

  @Navigation @Smoke
  Scenario: Accessing core pages via Global Navigation
    Given the user is on any page of the site
    When the user views the global navigation bar
    Then the links "Home", "About", "Services", and "Contact" are visible and functional
    And search and account icons are available

  @HeroBanner @Content
  Scenario: Viewing the main message on the Hero Banner
    Given the user loads the homepage
    When the hero section is displayed
    Then the title 'Compassionate, Patient-Centered Care' is prominently displayed
    And the title is overlaid on a relevant healthcare image

  @CTA @Functionality
  Scenario: Redirecting from the 'View commitment' Call-to-Action
    Given the user views the 'No Nonsense...' section on the homepage
    When they click the 'View commitment' button
    Then they are redirected to the Contact Us Page

  @CoreFeatures @Layout
  Scenario: Displaying key differentiators in the three-column feature grid
    Given the user scrolls to the feature section
    When the three column feature grid is displayed
    Then three distinct feature cards are presented
    And the cards highlight the following themes:
      | Feature Theme |
      | Innovation & Technology |
      | Experienced Medical Team |
      | Multiple Locations |
    And each card includes a relevant image and description

  @Quote @Visual
  Scenario: Viewing the motivational inspirational quote section
    Given the user scrolls past the main features
    When the inspirational quote is displayed
    Then the quote and its attribution are centered
    And the content is displayed over the symbolic hands graphic

  @KeyHighlights @Content
  Scenario: Identifying the 'Key Highlights' content block title
    Given the user scrolls to the Key Highlights area
    When the section heading is displayed
    Then the text 'Key Highlights? And where our people, staff picks below.' is visible as the exact section title

  @KeyHighlights @Layout
  Scenario: Viewing detailed philosophies in the 4-column Key Highlight Cards
    Given the user scrolls past the main section title
    When the 4-column highlight grid loads
    Then four cards are displayed detailing the following philosophies:
      | Philosophy Title |
      | Compassion is at the Core |
      | Patients are Partners |
      | Innovation is Encouraged |
      | Teamwork Drives Us |
    And each card includes a placeholder image

  @ValueProposition @Visual
  Scenario: Reading the care philosophy in the Value Proposition Banner
    Given the user views the 'Your health. Your voice. Your life.' section
    When the two-column content layout is presented
    Then the full descriptive text outlining the philosophy is visible
    And the content is displayed next to a large medical illustration

  @Footer @Contact
  Scenario: Accessing corporate information via the Footer
    Given the user scrolls to the bottom of the page
    When the footer is displayed
    Then the following contact and corporate elements are visible:
      | Element |
      | Office hours |
      | Main office address |
      | Navigation links (e.g., quick links) |
      | Copyright information |