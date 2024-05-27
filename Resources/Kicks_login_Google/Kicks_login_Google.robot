*** Settings ***

*** Keywords ***

Login through Google
    Click Element              class=nav-account
    Wait Until Page Contains   LOGIN

    Click Element              css=.h_google_button.h_google_circle[data='google']
    Switch Window              locator=NEW
Input Acc & Pwd   
    Input Text                 id=identifierId       julianwangdd@gmail.com
    Click Element              id=identifierNext
    Sleep                      5s
    Input Text                 name=Passwd           0971418876Love@
    Click Element              id=passwordNext
Sign Out
    Click Element              id=account-sign-out  
