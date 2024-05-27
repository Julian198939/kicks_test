*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MAIN_WEBSITE}   https://www.kickscrew.com/


*** Keywords ***

Verify Page Loaded
    Go To                      ${MAIN_WEBSITE}
    Wait Until Page Contains   ${MAIN_WEBSITE}