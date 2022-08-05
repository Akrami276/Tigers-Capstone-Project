Feature: Retail Test Environment

  Background: 
    Given User is on retail Website
    When User click on myAccount
    And User click on login option
    And User enter userName "zaki.akrami555@hotmail.com" and password "123456" 
    And User click on login button
    Then User should be logged into myAccount page
    
@AffiliateCheque @Regression4 @Smoke
  Scenario: Register as an Affiliate user with Cheque Payment Method
    When User click on Register for an Affiliate Account link
    And User fill affiliate form with below information
      | company | website     | taxID  | paymentMethod | Cheque Payee Name |     
      | Triple Z LLC | tiplez1.us.com | 66-32545465 | Cheque | Tek1  |
    And User check on About us check box
    And User click on Continue button            
    Then User should see a success message
 
@EditAffiliateInfo @Regression4 @Smoke
  Scenario: Edit your affiliate information from Cheque payment method to Bank Transfer
    When User click on Edit your affiliate information link
    And user click on Bank Transfer radio button
    And User fill Bank information with below information
      | bankName | abaNumber | swiftCode | accountName | accountNumber |
      | Wells Fargo | 1425655   |    45659875 | TekSchool | 65755659 |
    And User click on second continue button
    Then User should validate a success message

 @EditAccountInfo @Regression4 @Smoke
  Scenario: Edit your account Information
    When User click on Edit your account information link
    And User modify below information
      | firstName | lastName | email              | telephone  |
      |ZakiJan   | Akrami  |tek0100.tigers@gmail.com| 5403769752 |
    And User click on third continue button
    Then User should see a message Success: Your account has been successfully updated
