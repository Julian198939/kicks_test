*** Settings ***
Library           Selenium2Library

*** Keywords ***
Begin Web Test
    Open Browser                            about:blank                 ff


End Web Test Browser
    Close Browser      