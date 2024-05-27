*** Settings ***
Library        SeleniumLibrary 
Resource       ../PO/LandingPage.robot  

*** Variables ***
${invalid_email}   f0971418876@gmail.com
${invalid_pwd}     123456
${invalid msge}    Incorrect email or password.

*** Keywords ***

Login Invalid Acc
    Go To                      ${MAIN_WEBSITE}
    Wait Until Page Contains   ${MAIN_WEBSITE}

    
    Click Element              class=nav-account
    Wait Until Page Contains   LOGIN

    Input Text                 id=customer_email        ${invalid_email} 
    Input Text                 id=customer_password     ${invalid_pwd} 
    Click Element              css=input[type='submit'][value='Sign In']

Wait until Invalid Message
    Wait Until Page Contains   ${invalid msge}   timeout=10s

 


