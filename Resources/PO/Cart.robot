*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${present_in_the_cart}  Verify Product Added


*** Keywords ***
Verify Product Added
   
    # verify product title
     Element Should Contain   css=div._1fragem2i._1fragemnw.iZ894 > p._1x52f9s1._1fragemnw._1x52f9sp._1fragempz    Air Jordan 1 Low 'Ashen Slate' 553558-414
    # verify producy price
     Element Should Contain   css=span._19gi7yt0._19gi7ytm._1fragempz.notranslate  $92.00
    
     # verify product sub title
     Element Should Contain    css=p._1x52f9s1._1fragemnw._1x52f9sn._1fragempy._1x52f9sj  MENS / Mens US10.5  28.5CM  EU44.5

     
     Element Should Be Visible  css=img._1h3po424._1fragem2i._1fragemmx._1fragemr6._1fragemrb._1fragemrl._1fragemrg._1fragem9l._1fragem91._1fragema5._1fragem8h._1fragemby._1fragemb9._1fragemcn._1fragemak._1fragemnc


     # verify discount input field
     Element Should Be Visible  id=ReductionsInput0

     # verify total price
     Element Should Contain  css=strong._19gi7yt0._19gi7yts._1fragemq2._19gi7yt2.notranslate  $92.00


#Sign Out Acc
    #Click Element              id=account-sign-out 


