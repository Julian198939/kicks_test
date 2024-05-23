*** Settings ***
Documentation     This is some basic info about the whole suite
Library           Selenium2Library
Resource          ../Resources/Amzon/Amazon.Web.Gui.robot
Resource          ../Resources/Amzon/Common.robot




*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]             Smoke 
    Common.Begin Web Test 
    Amazon.Web.Gui.Search for Products
    Amazon.Web.Gui.Add Product to Cart
    Amazon.Web.Gui.Checkout
    Common.End Web Test Browser
      

  






