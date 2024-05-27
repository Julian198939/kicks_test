*** Settings ***
Documentation  These test cases use a 2nd level keyword to wrap up multiple 1st level keywords for brevity
# notice we're no longer referencing the Selenium2Library in our script!
Resource       ../Resources/Kicks_login_valid/Kicks_login_valid.robot
Resource       ../Resources/Kicks_login_valid/Kicks_login_valid_common.robot
Resource       ../TestsF/KicksCrew.robot
Resource       ../TestsF/Kicks_login_InvalidAcc.robot
Resource       ../TestsF/Kicks_login_Google.robot

Test Setup      Kicks_login_valid_common.Initialize Selenium And Begin Web Test
Test Teardown  Kicks_login_valid_common.End Web Test Browsers
#Suite Setup    Kicks_Invalid.common.Insert Testing Data
#Suite Teardown  Kicks_Invalid.common.Cleanup Testing Data


*** Test Cases *** 

Should be able to Login 
    [Tags]         01            Smoke
    Given user is not logged in
    When user login ${valid_email} and ${valid_pwd}

Shouldn't be able to login
    [Tags]         02       Smoke
    Given user is not logged in
    when user login to ${invalid_email} and ${invalid_pwd} 
    Then page present ${invalid msge}


Should be able to login and add to cart
    [Tags]            03         Smoke
    Given user is not logged in
    When user login ${valid_email} and ${valid_pwd}
    And user searches for ${products} 
    And user selects a ${searched product}
    And wait correct product page ${loads} 
    And user adds that product to their cart
    Then the product is ${present_in_the_cart} 

