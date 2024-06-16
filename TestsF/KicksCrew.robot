*** Settings ***
  
Resource       ../Resources/Kicks_login_valid/Kicks_login_valid.robot
Resource       ../Resources/Kicks_login_valid/Kicks_login_valid_common.robot

#PO
Resource       ../Resources/PO/LandingPage.robot
Resource       ../Resources/PO/Login.robot
Resource       ../Resources/PO/SearchResults.robot
Resource       ../Resources/PO/TopNav.robot
Resource       ../Resources/PO/Product.robot
Resource       ../Resources/PO/Cart.robot

#Variables      ../Tests/vars.robot

*** Variables ***
${MAIN_WEBSITE}   https://www.kickscrew.com/
${VALID_EMAIL}    love198939@yahoo.com   
${VALID_PASSWORD}  Love920324
${SEARCHED_PRODS}  https://cdn.shopify.com/s/files/1/0603/3031/1875/files/main-square_bcba713e-b633-4ff9-9d22-d96fec1cb1b5_x480.jpg?v=1708351693

${PRDS}  Air Jordan 1 Low 'Ashen Slate'
${loads}  Air Jordan 1 Low 'Ashen Slate' 553558-414

#Suite Setup    Kicks_Invalid.common.Insert Testing Data
#Suite Teardown  Kicks_Invalid.common.Cleanup Testing Data

*** Keywords ***
user is not logged in
    Log  Check to see whether user is logged in

user login with Valid Credentials 
    LandingPage.Verify Page Loaded    ${MAIN_WEBSITE} 
    Kicks_login_valid.Login Valid Acc  ${VALID_EMAIL}  ${VALID_PASSWORD}  
    Login.Verify Page Loaded

user searches for products
    TopNav.Search for Products   ${PRDS}
    SearchResults.Verify Search Completed

user selects searched prods
    Kicks_login_valid.Click and Choose Size  ${SEARCHED_PRODS} 

wait correct product page loads
    Product.Verify Page Loaded   ${loads} 

user adds that product to their cart
    Product.Add to Cart

the product is present in the cart
    Cart.Verify Product Added



#tc
#Should be able to login and add to cart
    ##[Tags]                     Smoke

    #Kicks_login_valid_common.Initialize Selenium And Begin Web Test

    #LandingPage.Verify Page Loaded

    #Kicks_login_valid.Login Valid Acc
    #Login.Verify Page Loaded

    #TopNav.Search for Products
    #SearchResults.Verify Search Completed

   # Kicks_login_valid.Click and Choose Size
    #Product.Verify Page Loaded
    #Product.Add to Cart

    #Cart.Verify Product Added

    #Kicks_login_valid_common.End Web Test Browsers
