*** Settings ***
Documentation     This is some basic info about the whole suite
Library           Selenium2Library

*** Variables ***
${URL}            http://www.amazon.com
${Input Text}     Ferrari 458


*** Keywords ***

Search for Products
    Go To                                   ${URL}
    Wait Until Page Contains                Amazon.com
    Input Text                              id=twotabsearchtextbox      ${Input Text}
    Click Element                           id=nav-search-submit-button
    Wait Until Page Contains                "Ferrari 458"

Add Product to Cart
    Click Button                            id=a-autoid-3-announce
    Sleep                                   5s
Checkout
    Click Element                           id=nav-cart-count-container
    Page Should Contain                     購物車
