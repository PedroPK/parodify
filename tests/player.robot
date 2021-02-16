***Settings
Documentation       Testes do Player de Paródias
Library             Browser
Resource            ../resources/base.robot

***Keywords
Click Buscar
    Wait For Element Be Visible By XPATH  //h2[contains(text(), Buscar)]
    Click                       css=a[href*=search]

Click Sertanejo Category
    Wait For Element Be Visible By XPATH     //img[contains(@src, "sertanejo.png")]/..
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text Content by CSS     h2             Sertanejo

Click Paragraph by Text
    [Arguments]         ${text_value}
    Wait For Element Be Visible By XPATH  //p[contains(text(), ${text_value})]/..
    Click                       xpath=//p[contains(text(), ${text_value})]/..

Click H2 by Class
    [Arguments]         ${text_value}                 ${class_value}
    Get Class by XPATH  //h2[contains(text(), ${text_value})]/../../div/a/i     ${class_value}
    Click       xpath=//h2[contains(text(), ${text_value})]/../../div[contains(@class, play-button)]/a


***Test Cases
Reproduzir paródia Bug de Manhã
    [Tags]          sertanejo
    Open Chromium in Login Page

    Login With  papito@parodify.com  pwd123
    Is Logout Link Visible

    Click Buscar
    
    Click Sertanejo Category

    Click Paragraph by Text  "Marcus e Debug"

    Get Text Content by XPATH  //h2[contains(text(), "Bug de Manhã")]

Acessar album Highway to PROD
    [Tags]      play
    Open Chromium in Login Page
    Login With  papito@parodify.com     pwd123
    Is Logout Link Visible

    #Take Screenshot

    Search For  Highway To Prod

    Click Paragraph by Text     "Highway To Prod"

    Click H2 by Class         "Um Tester no Pedaço"           fa-play-circle
    #Sleep       2

    Click H2 by Class         "Um Tester no Pedaço"           fa-pause-circle
    #Sleep       2
