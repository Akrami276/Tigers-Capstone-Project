Feature: Home Page
 
   @CurrencyValue @Regression2 @Smoke
  Scenario: User verify currency values change
    Given User is on Retail website
    When User click on Currency
    And User Chose Euro from dropdown
    Then currency value should change to Euro
  @EmptyCart @Regression2 @Smoke
  Scenario: User empty Shopping cart message displays
    Given User is on Retail website
    When User click on shopping cart
    Then 'Your shopping cart is empty!' message should display
