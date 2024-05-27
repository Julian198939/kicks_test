*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  css=div.account-page-title-text
    Element Text Should Be  css=div.account-page-title-text  MY ACCOUNT
