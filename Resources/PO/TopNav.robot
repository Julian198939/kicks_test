*** Settings ***
Documentation  Kicks top navigation
Library  SeleniumLibrary

*** Variables ***
${products}  Air Jordan 1 Low 'Ashen Slate'

*** Keywords ***
Search for Products
    Enter Search Term


Enter Search Term
    #[Air Jordan 1 Low 'Ashen Slate']
     Input Text                id=autocomplete-0-input    ${products}
     Sleep                     3s
     #Wait Until Element Contains    css=div.aa-PanelSection--right > section.aa-Source > div.aa-SourceHeader > div > span.aa-SourceHeaderTitle
