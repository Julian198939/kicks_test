*** Settings ***
Library        SeleniumLibrary 
Resource       ../PO/LandingPage.robot  



*** Keywords ***

Login Invalid Acc
    [Arguments]  ${MAIN_WEBSITE}  ${INVALID_EMAIL}  ${INVALID_PWD}
    Go To                      ${MAIN_WEBSITE}
    Wait Until Page Contains   ${MAIN_WEBSITE}

    
    Click Element              class=nav-account
    Wait Until Page Contains   LOGIN

    Input Text                 id=customer_email        ${INVALID_EMAIL}  
    Input Text                 id=customer_password     ${INVALID_PWD} 
    Click Element              css=input[type='submit'][value='Sign In']

Wait until Invalid Message
    [Arguments]  ${INVALID_MSGE}
    Wait Until Page Contains   ${INVALID_MSGE}   timeout=10s

 


