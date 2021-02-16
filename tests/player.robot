***Settings
Documentation       Testes do Player de Paródias
Library             Browser
Resource            ../resources/base.robot

***Test Cases
Reproduzir paródia Bug de Manhã
    Open Chromium in Login Page

    Login With  papito@parodify.com  pwd123
    Is Logout Link Visible

    Get Text Content by XPATH  //h2[contains(text(), Buscar)]
    Wait For Element Be Visible By XPATH  //h2[contains(text(), Buscar)]
    Click                       css=a[href*=search]
    #Get Text                    css=h2      equal       Buscar
    
    #Click       css=a[href$="/4"]      Replacing to use a Relative XPATH Selector
    Get Text Content by XPATH   //img[contains(@src, "sertanejo.png")]/..
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text Content by CSS     h2             Sertanejo

    Get Text Content by XPATH   //p[contains(text(), "Marcus e Debug")]/..
    Click                       xpath=//p[contains(text(), "Marcus e Debug")]/..

    Get Text Content by XPATH  //h2[contains(text(), "Bug de Manhã")]

Acessar album Highway to PROD
    [Tags]      play
    Open Chromium in Login Page
    Login With  papito@parodify.com     pwd123
    Is Logout Link Visible

    Click       xpath=//p[contains(text(), "Highway To Prod")]/..
    Sleep       3

    Get Text Content by XPATH      //h2[contains(text(), "Um Tester no Pedaço")]
    Click       xpath=//h2[contains(text(), "Um Tester no Pedaço")]/../../div[contains(@class, play-button)]/a
    Sleep       5