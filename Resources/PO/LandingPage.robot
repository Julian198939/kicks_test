*** Settings ***
Library  SeleniumLibrary

#Variables  ../../Tests/vars.robot


*** Keywords ***

Verify Page Loaded
    [Arguments]                ${MAIN_WEBSITE}
    Go To                      ${MAIN_WEBSITE}
    Wait Until Page Contains   ${MAIN_WEBSITE}