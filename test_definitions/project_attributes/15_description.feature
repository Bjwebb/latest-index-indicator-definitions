Feature: Description

  Scenario Outline: Description is present
    Given an IATI activity
     And the activity is current
     Then `description[text() or narrative/text()]` should be present

  Scenario Outline: Description has at least 80 characters
    Given an IATI activity
     And the activity is current
     Then `description/text() | description/narrative/text()` should have at least 80 characters
