*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${title_page_locator}                class:title
${name_product_locator}              class:inventory_item_name
${nformation_locator}                class:summary_info_label
${finish_button}                     id:finish

*** Keywords ***
user see Checkout:Overview page
    Wait Until Element Is Visible    
    ...    ${title_page_locator}
    Sleep    2
user see name product want to buy
    Element Should Be Visible    
    ...    ${name_product_locator}
    Sleep    2
user see Payment Information, Shipping Information, and Price total
    Element Should Be Visible    
    ...    ${nformation_locator}
    Sleep    2
user click Finish Button
    Click Button    
    ...    ${finish_button}
    Sleep    2