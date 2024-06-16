*** Settings ***
Documentation  Kicks top navigation
Library  SeleniumLibrary

#Variables  ../../Tests/vars.robot

*** Keywords ***
Search for Products
    #Enter Search Term
#Enter Search Term
    #[Air Jordan 1 Low 'Ashen Slate']
    [Arguments]  ${PRDS}
     Input Text                id=autocomplete-0-input    ${PRDS}
     #Wait Until Element Contains    css=div.aa-PanelSection--right > section.aa-Source > div.aa-SourceHeader > div > span.aa-SourceHeaderTitle
