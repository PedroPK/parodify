***Settings
Documentation       Testes do Player de Paródias
Resource            ../resources/base.robot

***Test Cases
Reproduzir paródia Bug de Manhã
    Open Chromium in Login Page

    Login With  papito@parodify.com  pwd123
    Is Logout Link Visible

    Sleep       2

    Click       css=a[href*=search]
    Get Text    css=h2      equal       Buscar
    Sleep       2

    #Click       css=a[href$="/4"]      Replacing to use a Relative XPATH Selector
    Get Text Content by XPATH   //img[contains(@src, "sertanejo.png")]/..
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text Content by CSS     h2             Sertanejo

    Get Text Content by XPATH   //p[contains(text(), "Marcus e Debug")]/..
    Click                       xpath=//p[contains(text(), "Marcus e Debug")]/..
    Sleep       3

    Get Text Content by XPATH  //h2[contains(text(), "Bug de Manhã")]
    Sleep       3