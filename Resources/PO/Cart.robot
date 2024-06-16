*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# ${present_in_the_cart}  Verify Product Added


*** Keywords ***
Verify Product Added
   
    # verify product title
     Element Should Contain   css=div._1fragem2i._1fragemo1.iZ894 > p._1x52f9s1._1fragemo1._1x52f9sv._1fragemqc   Air Jordan 1 Low 'Ashen Slate' 553558-414
    # verify producy price
     Element Should Contain  css=span._19gi7yt0._19gi7yts._1fragemqc.notranslate  $97.00
    
     # verify product sub title
     Element Should Contain   css=p._1x52f9s1._1fragemo1._1x52f9st._1fragemqb._1x52f9sp  MENS / Mens US11  \ 29CM \  EU45

     
     Element Should Be Visible  css=img._1h3po424._1fragem2i._1fragemn2._1fragemrk._1fragemrp._1fragemrz._1fragemru._1fragem9q._1fragem96._1fragemaa._1fragem8m._1fragemc3._1fragembe._1fragemcs._1fragemap._1fragemnh


     # verify discount input field
     Element Should Be Visible  id=ReductionsInput0

     # verify total price
     Element Should Contain  css=strong._19gi7yt0._19gi7yty._1fragemqf._19gi7yt2.notranslate  $97.00

#Sign Out Acc
    #Click Element              id=account-sign-out 


