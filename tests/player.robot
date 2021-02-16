***Settings
Documentation       Testes do Player de Paródias
Resource            ../resources/base.robot

***Test Cases
Reproduzir paródia Bug de Manhã
    Open Chromium in Login Page

    Login With  papito@parodify.com  pwd123
    Is Logout Link Visible

    Sleep       5

    Click       css=a[href*=search]
    Sleep       5

    Click       css=a[href$="/4"]
    Sleep       5
