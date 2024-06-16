*** Settings ***
Library  SeleniumLibrary

#Variables  ../../Tests/vars.robot


*** Keywords ***
Verify Page Loaded
   [Arguments]  ${loads} 
    Wait Until Page Contains  ${loads} 



Add to Cart
    Click Element           css=label.opt---us-11-9700-a
    Click Element             id=add_to_cart