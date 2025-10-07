Feature: Research Initiatives Page Content and Navigation

  As a user interested in the organization's research
  I want to easily navigate the Research Initiatives page
  So that I can quickly understand the core mission, departmental focuses, and specific projects.

  # -------------------------------------------------------------------------------------
  # Feature 1: Global Navigation Consistency (Applies to all pages)
  # -------------------------------------------------------------------------------------

  @Navigation @Header
  Scenario: Accessing Core Pages via Header
    Given the user is on any page
    When they view the header navigation
    Then they see links for 'Home', 'About', 'Services', and 'Contact'
    And functional Search and Profile icons are present.

  # -------------------------------------------------------------------------------------
  # Feature 2: Research Initiatives Hero
  # -------------------------------------------------------------------------------------

  @ResearchHero @ContentVerification
  Scenario: Understanding Core Research Goals on Landing
    Given the user lands on the Research Initiatives page
    When they read the introductory text
    Then they see the primary mission statement displayed
    And four key areas of research are listed
    And a relevant lab equipment image is visually paired with the text.

  # -------------------------------------------------------------------------------------
  # Feature 3 & 4: Departmental Research Navigation and Details
  # -------------------------------------------------------------------------------------

  @DepartmentTabs @Interaction
  Scenario: Switching between departmental research focuses
    Given the departmental research tabs are visible
    When the user clicks on the 'Internal Medicine' tab
    Then the content area below the tabs updates to show the specific research focus for Internal Medicine.

  @DepartmentTabs @ContentVerification
  Scenario: Reviewing Primary Care Innovations Details
    Given the 'Primary Care' tab is selected
    When the user reads the 'Ongoing Innovations' section
    Then they see a list detailing four specific technological advancements in primary care.

  # -------------------------------------------------------------------------------------
  # Feature 5: Main Content Section Divider
  # -------------------------------------------------------------------------------------

  @SectionHeading @ContentVerification
  Scenario: Identifying the start of impact stories
    Given the user scrolls past the primary research areas
    When they encounter the next major heading
    Then the heading text is exactly 'Our Stories of Innovation & Impact'
    And this heading clearly demarcates the start of case studies and impact narratives.

  # -------------------------------------------------------------------------------------
  # Feature 6: Chronic Disease Management Section
  # -------------------------------------------------------------------------------------

  @ChronicDisease @ContentCount
  Scenario: Viewing research areas in chronic care
    Given the user views the Chronic Disease Management section
    When they read the list of research areas
    Then they see six specific focus points
    And the points include 'predictive models' and 'remote monitoring'
    And the section is accompanied by a thematic illustration.

  # -------------------------------------------------------------------------------------
  # Feature 7: Genomic Medicine Section
  # -------------------------------------------------------------------------------------

  @GenomicMedicine @ContentDetails
  Scenario: Understanding personalized treatment research
    Given the user views the Genomic Medicine section
    When they examine the focus areas
    Then they see six specific research points
    And the points include 'pharmacogenomics', 'genomic screening', and 'use of AI for therapy matching'
    And the content is paired with a scientific visualization.

  # -------------------------------------------------------------------------------------
  # Feature 8: Infection Control Section
  # -------------------------------------------------------------------------------------

  @InfectionControl @DataVerification
  Scenario: Reviewing public health research data points
    Given the user views the Infection Control section
    When they read the list of tracked data points
    Then they see nine areas of focus
    And the focus spans from 'vaccine effectiveness' to 'social determinants of health'
    And the section includes an image related to vaccination or infection.

  # -------------------------------------------------------------------------------------
  # Feature 9: Global Footer
  # -------------------------------------------------------------------------------------

  @Footer @Structure
  Scenario: Accessing company information
    Given the user scrolls to the bottom of the page
    When they view the footer
    Then they find the main office contact information
    And a company commitment statement is present
    And all necessary legal and privacy links are organized into three distinct columns.