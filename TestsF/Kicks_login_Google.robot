*** Settings ***
Resource       ../Resources/Kicks_login_Google/Kicks_login_Google.robot
Resource       ../Resources/Kicks_login_Google/Kicks_login_Google_common.robot

*** Keywords ***
user login to google acc
   Kicks_login_Google.Login through Google
user input acc and pwd
    Kicks_login_Google.Input Acc & Pwd   

user should be able to sign out

    Kicks_login_Google.Sign Out
