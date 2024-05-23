*** Settings ***
Library        SeleniumLibrary   

*** Keywords ***

 #login valid acc
Login Valid Acc
    Go To                      https://www.kickscrew.com/
    Click Element              class=nav-account
    Wait Until Page Contains   LOGIN

    Input Text                 id=customer_email        love198939@yahoo.com
    Input Text                 id=customer_password     Love920324
    Click Element              css=input[type='submit'][value='Sign In']

Search for porduct 
#[Air Jordan 1 Low 'Ashen Slate']
     Input Text                id=autocomplete-0-input    Air Jordan 1 Low 'Ashen Slate'
     Sleep                     5s
     #Wait Until Element Contains    css=div.aa-PanelSection--right > section.aa-Source > div.aa-SourceHeader > div > span.aa-SourceHeaderTitle

Click and Choose Size
     Click Element             css=button.aa-SubmitButton
     Wait Until Page Contains  FILTER
     Click Image               https://cdn.shopify.com/s/files/1/0603/3031/1875/files/main-square_bcba713e-b633-4ff9-9d22-d96fec1cb1b5_x480.jpg?v=1708351693
    
     Sleep                     3s
     Click Element             css=label.opt---us-10-5-9200-a > span

Check out cart
     Click Element             id=add_to_cart
     Wait Until Element Is Visible  css=div._1fragemop._1fragemms.iZ894 > p._1x52f9s1._1fragemms._1x52f9sp._1fragemp3  10s
     Element Should Be Visible      css=div._1fragemop._1fragemms.iZ894 > p._1x52f9s1._1fragemms._1x52f9sp._1fragemp3
     
    # 验证商品标题内容是否正确
     Element Should Contain    css=div._1fragemop._1fragemms.iZ894 > p._1x52f9s1._1fragemms._1x52f9sp._1fragemp3     Air Jordan 1 Low 'Ashen Slate' 553558-414
    # 验证商品价格内容是否正确
     Element Should Contain    css=span._19gi7yt0._19gi7ytm._1fragemp3.notranslate  $92.00
    
     # 验证商品副标题内容是否正确
     Element Should Contain    css=p._1x52f9s1._1fragemms._1x52f9sn._1fragemp2._1x52f9sj  MENS / Mens US10.5  28.5CM  EU44.5

     Element Should Be Visible  css=img._1h3po424._1fragemop._1fragemlt._1fragemqa._1fragemqf._1fragemqp._1fragemqk._1fragem8h._1fragem7x._1fragem91._1fragem7d._1fragemau._1fragema5._1fragembj._1fragem9g._1fragemm8
     Element Should Be Visible  id=ReductionsInput0
     Element Should Be Visible  css=div._1fragemms._1fragemov._1fragem2n._1fragem5k._1fragemnc._16s97g7f._16s97g7p._16s97g71j._16s97g71t



#Sign Out Acc
    #Click Element              id=account-sign-out 


