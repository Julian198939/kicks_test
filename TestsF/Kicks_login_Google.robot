*** Settings ***
Documentation  This is some basic info about the second suite
Library        SeleniumLibrary   
Resource       ../Resources/Kicks_login_Google/Kicks_login_Google.robot
Resource       ../Resources/Kicks_login_Google/Kicks_login_Google_common.robot
Test Setup     Kicks_login_Google_common.Initialize Selenium And Begin Web Test
Test Teardown  Kicks_login_Google_common.End Web Test


*** Variables ***



*** Test Cases ***
Should be able to login to google acc
    [Documentation]            This is some basic info about the test
    [Tags]                     02  Smoke
    Kicks_login_Google.Login through Google
    Kicks_login_Google.Input Acc & Pwd   
    

Should be able to sign out
    [Documentation]            This is some basic info about the test
    [Tags]                     03  Smoke
    Kicks_login_Google.Sign Out
