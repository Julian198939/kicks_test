*** Settings ***
Library        SeleniumLibrary 

*** Variables ***
${valid_email}  love198939@yahoo.com   
${valid_pwd}    Love920324
${searched_product}  https://cdn.shopify.com/s/files/1/0603/3031/1875/files/main-square_bcba713e-b633-4ff9-9d22-d96fec1cb1b5_x480.jpg?v=1708351693

*** Keywords ***

 #login valid acc
Login Valid Acc
    Click Element              class=nav-account
    Wait Until Page Contains   LOGIN

    Input Text                 id=customer_email        ${valid_email}
    Input Text                 id=customer_password     ${valid_pwd}
    Click Element              css=input[type='submit'][value='Sign In']

Click and Choose Size
     Click Element             css=button.aa-SubmitButton
     Wait Until Page Contains  FILTER
     Click Image               ${searched_product} 
    
     Sleep                     3s
