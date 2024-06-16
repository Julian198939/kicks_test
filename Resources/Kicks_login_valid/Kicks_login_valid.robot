*** Settings ***
Library        SeleniumLibrary 

#Variables    ../../Tests/vars.robot


*** Keywords ***

 #login valid acc
Login Valid Acc
    [Arguments]    ${VALID_EMAIL}  ${VALID_PASSWORD}    
    Click Element              class=nav-account
    Wait Until Page Contains   LOGIN

    Input Text                 id=customer_email        ${VALID_EMAIL} 
    Input Text                 id=customer_password     ${VALID_PASSWORD}  
    Click Element              css=input[type='submit'][value='Sign In']

Click and Choose Size
    [Arguments]    ${SEARCHED_PRODS}
     Click Element             css=button.aa-SubmitButton
     Wait Until Page Contains  FILTER
     Click Image               ${SEARCHED_PRODS} 
    
     Sleep                     3s
