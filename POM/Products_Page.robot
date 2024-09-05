*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${title_page_locator}    class:title
${title_page}            Products
${Add_to_cart_button}    id:add-to-cart-sauce-labs-backpack    
*** Keywords ***
user see products page
    Element Should Contain
    ...    ${title_page_locator}    
    ...    ${title_page}
user click Add to Cart Button on Sauce Labs Backpack
    Click Button    
    ...    ${Add_to_cart_button}
    Sleep    2