@draft
Feature: Shopping cart
  As a practice user
  I want to add a product to the cart
  So that I can review the order before checkout

  Scenario: Add an available product to the cart
    Given the local TestYard shop is open
    When I add an available product to the cart
    Then the cart shows that product and its quantity

  # Confirm the exact flow, labels, and expected quantity against the local app before automating.
