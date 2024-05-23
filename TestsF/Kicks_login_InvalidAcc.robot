*** Settings ***
Documentation  This is some basic info about the whole suite
Library        SeleniumLibrary   
Resource       ../Resources/Kicks_login_invalid/Kicks_Invalid.robot
Resource       ../Resources/Kicks_login_invalid/Kicks_Invalid_common.robot
#Suite Setup    Kicks_Invalid.common.Insert Testing Data
Test Setup     Kicks_Invalid_common.Initialize Selenium And Begin Web Test
Test Teardown  Kicks_Invalid_common.End Web Test Browsers






*** Test Cases ***
Shouldn't be able to login to acc
    [Documentation]            This is some basic info about the test
    [Tags]                     01  Smoke

    Kicks_Invalid.Login Invalid Acc

    Kicks_Invalid.Wait until Invalid Message


