@iati-activity
Feature: Conditions

  Scenario Outline: Conditions data
    Given an IATI activity
     And the activity is current
     And `activity-status/@code` is one of 2, 3 or 4
     Then `conditions` should be present

  Scenario Outline: Conditions document
    Given an IATI activity
     And the activity is current
     And `activity-status/@code` is one of 2, 3 or 4
     And `conditions/@attached` is not 0
     Then `document-link/category[@code="A04"]` should be present
