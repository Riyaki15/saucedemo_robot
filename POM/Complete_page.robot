*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${title_page_locator}        class:title
${complete_message_locator}  class:complete-header
${complete_message}          Thank you for your order!
${back_home_button}          id:back-to-products
*** Keywords ***
user see Checkout: Complete! page
    Wait Until Element Is Visible    
    ...    ${title_page_locator}
    Sleep    2
user see complete message
    Element Should Contain    
    ...    ${complete_message_locator}    
    ...    ${complete_message}
user click Back Home button
    Click Button    
    ...    ${back_home_button}
    Sleep    2