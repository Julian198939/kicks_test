*** Settings ***
       
Resource       ../Resources/Kicks_login_invalid/Kicks_Invalid.robot
Resource       ../Resources/Kicks_login_invalid/Kicks_Invalid_common.robot
#Suite Setup    Kicks_Invalid.common.Insert Testing Data

*** Variables ***
${MAIN_WEBSITE}    https://www.kickscrew.com/
${INVALID_EMAIL}   f0971418876@gmail.com
${INVALID_PWD}     123456
${INVALID_MSGE}    Incorrect email or password.


*** Keywords ***
user login to invalid email and invalid pwd
  Kicks_Invalid.Login Invalid Acc   ${MAIN_WEBSITE}   ${INVALID_EMAIL}  ${INVALID_PWD} 

page present invalid msge
    Kicks_Invalid.Wait until Invalid Message  ${INVALID_MSGE}  


