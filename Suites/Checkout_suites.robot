*** Settings ***
Resource        ../POM/Login_Page.robot
Resource        ../POM/Products_page.robot
Resource        ../POM/Your_Cart_page.robot
Resource        ../POM/Your_Information_page.robot

*** Test Cases ***
User want to buy product
    Given user open website saucedemo
    When user input username with valid credentials
    And user input password with valid credentials
    And user click Login button
    Then user see products page
    When user click Add to Cart Button on Sauce Labs Backpack
    And user click cart icon
    Then user see your cart page
    When user click Checkout button
    Then user see Checkout:Your Information page
    When user input first name
    And user input last name
    And user input ZIP/Postal code
    And user click Continue button






    
