*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${loads}  Air Jordan 1 Low 'Ashen Slate' 553558-414

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  ${loads} 



Add to Cart
    Click Element             css=label.opt---us-10-5-9200-a > span
    Click Element             id=add_to_cart