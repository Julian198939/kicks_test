*** Settings ***

Library        SeleniumLibrary   


*** Keywords ***

Initialize Selenium And Begin Web Test
    Set selenium speed         .2s
    Set selenium timeout       10s
  
    Log                        Starting the test case
    Open Browser               https://www.kickscrew.com/     chrome  

End Web Test
    Close Browser