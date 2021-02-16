***Settings
Documentation       Testes do Player de Paródias
Library             Browser
Resource            ../resources/base.robot

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