*** Settings ***
Library        SeleniumLibrary
Library    XML
*** Variables ***
${title_page_locator}        class:title
${first_name_locator}        id:first-name
${first_name}                Rizky
${last_name_locator}         id:last-name
${last_name}                 Aulia
${postal_code_locator}       id:postal-code
${postal_code}               10909
${continue_button}           id:continue

*** Keywords ***
user see Checkout:Your Information page
    Wait Until Element Is Visible    
    ...    ${title_page_locator}
    Sleep    2
user input first name
    Input Text    
    ...    ${first_name_locator}    
    ...    ${first_name}
    Sleep    2
user input last name
    Input Text    
    ...    ${last_name_locator}    
    ...    ${last_name}
    Sleep    2
user input ZIP/Postal code
    Input Text    
    ...    ${postal_code_locator}    
    ...    ${postal_code}
    Sleep    2
user click Continue button
    Click Button    
    ...    ${continue_button}
    Sleep    2

    
