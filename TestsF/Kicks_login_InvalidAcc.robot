*** Settings ***
       
Resource       ../Resources/Kicks_login_invalid/Kicks_Invalid.robot
Resource       ../Resources/Kicks_login_invalid/Kicks_Invalid_common.robot
#Suite Setup    Kicks_Invalid.common.Insert Testing Data







*** Keywords ***
user login to ${invalid_email} and ${invalid_pwd} 

    Kicks_Invalid.Login Invalid Acc

page present ${invalid msge}
    Kicks_Invalid.Wait until Invalid Message


