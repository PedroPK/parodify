***Settings
Documentation       Testes do Player de Paródias
Library             Browser
Resource            ../resources/base.robot

***Test Cases
Reproduzir paródia Bug de Manhã
    [Tags]          sertanejo
    Open Chromium in Login Page

    Login With  papito@parodify.com  pwd123
    Is Logout Link Visible

    #Get Text Content by XPATH  //h2[contains(text(), Buscar)]
    Wait For Element Be Visible By XPATH  //h2[contains(text(), Buscar)]
    Click                       css=a[href*=search]
    #Get Text                    css=h2      equal       Buscar
    
    #Click       css=a[href$="/4"]      Replacing to use a Relative XPATH Selector
    Wait For Element Be Visible By XPATH     //img[contains(@src, "sertanejo.png")]/..
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text Content by CSS     h2             Sertanejo

    Wait For Element Be Visible By XPATH  //p[contains(text(), "Marcus e Debug")]/..
    #Get Text Content by XPATH   //p[contains(text(), "Marcus e Debug")]/..
    Click                       xpath=//p[contains(text(), "Marcus e Debug")]/..

    Get Text Content by XPATH  //h2[contains(text(), "Bug de Manhã")]

Acessar album Highway to PROD
    [Tags]      play
    Open Chromium in Login Page
    Login With  papito@parodify.com     pwd123
    Is Logout Link Visible

    #Take Screenshot

    Search For  Highway To Prod

    #Get Text Content by XPATH  //p[contains(text(), "Highway To Prod")]/..
    Click       xpath=//p[contains(text(), "Highway To Prod")]/..


    #Get Text Content by XPATH      //h2[contains(text(), "Um Tester no Pedaço")]
    Click       xpath=//h2[contains(text(), "Um Tester no Pedaço")]/../../div[contains(@class, play-button)]/a
    Sleep       5