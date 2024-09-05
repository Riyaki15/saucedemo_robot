*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${title_page_locator}        class:title
${title_page}                Your Cart
${checkout_button}           id:checkout 

*** Keywords ***

user see your cart page
    Element Should Contain    
    ...    ${title_page_locator}    
    ...    ${title_page}
    Sleep    2
user click Checkout button
    Click Button    
    ...    ${checkout_button}
    Sleep    2