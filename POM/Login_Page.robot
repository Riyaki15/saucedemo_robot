*** Settings ***
Library                SeleniumLibrary

*** Variables ***
${base_url}                https://www.saucedemo.com/
${browser}                 edge
${username_locator}        id:user-name
${username}                standard_user
${password_locator}        id:password
${password}                secret_sauce
${login_button}            id:login-button

*** Keywords ***
user open website saucedemo
    Open Browser
    ...    ${base_url}
    ...    ${browser}
    Sleep    2
user input username with valid credentials
    Input Text    
    ...    ${username_locator}  
    ...    ${username}
    Sleep    2
user input password with valid credentials
    Input Password    
    ...    ${password_locator}     
    ...    ${password}
    Sleep    2
user click Login button
    Click Button    
    ...    ${login_button}
    Sleep    2