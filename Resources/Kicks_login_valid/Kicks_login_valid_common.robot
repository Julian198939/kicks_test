*** Settings ***
Library        SeleniumLibrary   

*** Keywords ***

Initialize Selenium And Begin Web Test
    Set selenium speed         .2s
    Set selenium timeout       10s
    log                        Starting the test case
    Open Browser                            about:blank                 chrome

End Web Test Browsers 
    Close Browser

