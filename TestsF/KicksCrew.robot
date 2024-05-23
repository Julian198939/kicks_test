*** Settings ***
Documentation  This is some basic info about the whole suite
Library        SeleniumLibrary   
Resource       ../Resources/Kicks_login_valid/Kicks_login_valid.robot
Resource       ../Resources/Kicks_login_valid/Kicks_login_valid_common.robot
#Suite Setup    Kicks_Invalid.common.Insert Testing Data
Test Setup     Kicks_login_valid_common.Initialize Selenium And Begin Web Test
Test Teardown  Kicks_login_valid_common.End Web Test Browsers
#Suite Teardown  Kicks_Invalid.common.Cleanup Testing Data

*** Test Cases *** 
Should be able to login and add to cart
    [Documentation]            This is some basic info about the test
    [Tags]                       Smoke

    Kicks_login_valid.Login Valid Acc
    Kicks_login_valid.Search for porduct

    Kicks_login_valid.Click and Choose Size

    Kicks_login_valid.Check out cart
