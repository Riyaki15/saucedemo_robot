*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${title_page_locator}        class:title
${checkout_button}           id:checkout 

*** Keywords ***

user see your cart page
    Wait Until Element Is Visible    
    ...    ${title_page_locator}
    Sleep    2
user click Checkout button
    Click Button    
    ...    ${checkout_button}
    Sleep    2