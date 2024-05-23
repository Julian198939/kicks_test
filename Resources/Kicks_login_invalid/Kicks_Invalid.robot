*** Settings ***
Library        SeleniumLibrary   

*** Keywords ***

Login Invalid Acc
    Go To                      https://www.kickscrew.com/
    Click Element              class=nav-account
    Wait Until Page Contains   LOGIN

    Input Text                 id=customer_email        f0971418876@gmail.com
    Input Text                 id=customer_password     0971418876Love@
    Click Element              css=input[type='submit'][value='Sign In']

Wait until Invalid Message
    Wait Until Page Contains  Incorrect email or password.  timeout=5s

 


