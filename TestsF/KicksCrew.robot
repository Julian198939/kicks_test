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

#Suite Setup    Kicks_Invalid.common.Insert Testing Data
#Suite Teardown  Kicks_Invalid.common.Cleanup Testing Data

*** Keywords ***
user is not logged in
    Log  Check to see whether user is logged in

user login ${valid_email} and ${valid_pwd}
    LandingPage.Verify Page Loaded

    Kicks_login_valid.Login Valid Acc
    Login.Verify Page Loaded

user searches for ${products} 
    TopNav.Search for Products
    SearchResults.Verify Search Completed

user selects a ${searched_product}
    Kicks_login_valid.Click and Choose Size

wait correct product page ${loads} 
    Product.Verify Page Loaded

user adds that product to their cart
    Product.Add to Cart

the product is ${present_in_the_cart} 
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
