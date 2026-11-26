@draft
Feature: API sandbox isolation
  As a practice user
  I want test data isolated by sandbox
  So that one run does not affect another

  Scenario: Data created in one sandbox is not visible in another
    Given two distinct API sandbox identifiers
    When I create practice data in the first sandbox
    Then the data is available in that sandbox
    And the data is not available in the second sandbox

  # Confirm the resource and cleanup behavior against the API contract before automating.
