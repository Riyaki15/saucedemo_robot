*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${title_page_locator}    class:title
${title_page}            Products
${add_to_cart_button}    id:add-to-cart-sauce-labs-backpack
${cart_icon}             css:.shopping_cart_link
*** Keywords ***
user see products page
    Element Should Contain
    ...    ${title_page_locator}    
    ...    ${title_page}
user click Add to Cart Button on Sauce Labs Backpack
    Click Button    
    ...    ${add_to_cart_button}
    Sleep    2
user click cart icon
    Click Element    
    ...    ${cart_icon}
    Sleep    2