***Settings
Documentation       Testes do Player de Paródias
Library             Browser
Resource            ../resources/base.robot

***Keywords
Click Sertanejo Category
    Wait For Element Be Visible By XPATH     //img[contains(@src, "sertanejo.png")]/..
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text Content by CSS     h2             Sertanejo

Click Artist/Title
    [Arguments]         ${text_value}
    Wait For Element Be Visible By XPATH  //p[contains(text(), ${text_value})]/..
    Click                       xpath=//p[contains(text(), ${text_value})]/..

Press Play/Pause Button
    [Arguments]         ${text_value}                 ${class_value}
    Get Class by XPATH  //h2[contains(text(), ${text_value})]/../../div/a/i     ${class_value}
    Click       xpath=//h2[contains(text(), ${text_value})]/../../div[contains(@class, play-button)]/a

***Test Cases
Reproduzir paródia Bug de Manhã
    [Tags]          sertanejo
    #Open Chromium in Login Page
    Access Login Page

    Login With  papito@parodify.com  pwd123
    Is Logout Link Visible

    Click Buscar
    
    Click Sertanejo Category

    Click Artist/Title      "Marcus e Debug"

    Wait For H2 by Text     "Bug de Manhã"

Acessar album Highway to PROD
    [Tags]      play
    #Open Chromium in Login Page
    Access Login Page

    Login With  papito@parodify.com     pwd123
    Is Logout Link Visible

    #Take Screenshot

    Search For  Highway To Prod

    Click Artist/Title     "Highway To Prod"

    Press Play/Pause Button         "Um Tester no Pedaço"           fa-play-circle
    #Sleep       2

    Press Play/Pause Button         "Um Tester no Pedaço"           fa-pause-circle
    #Sleep       2