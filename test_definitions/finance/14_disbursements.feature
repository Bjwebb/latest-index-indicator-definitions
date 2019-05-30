@iati-activity
Feature: Disbursements

  Scenario Outline: Disbursements are present
    Given an IATI activity
     And the activity is current
     And `activity-status/@code` is one of 2, 3 or 4
     Then `transaction[transaction-type/@code="3"]` should be present and of non-zero value
