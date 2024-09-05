*** Settings ***
Resource        ../POM/Login_Page.robot
Resource        ../POM/Products_Page.robot

*** Test Cases ***
User want to buy product
    Given user open website saucedemo
    When user input username with valid credentials
    And user input password with valid credentials
    And user click Login button
    Then user see products page
    When user click Add to Cart Button on Sauce Labs Backpack

    
