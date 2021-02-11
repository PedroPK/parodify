***Settings
Documentation   Testes da Página de Login
Library         Browser

Test Teardown   Take Screenshot

***Keywords***
Login With
    [Arguments]     ${email_arg}        ${password_arg}
    Fill Text       id=user_email       ${email_arg}
    Fill Text       id=user_password    ${password_arg}
    Click           css=input[type=submit]


***Test Cases
Login com Sucesso
    #Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium
    New Page        https://parodify.herokuapp.com/users/sign_in

    Get Text    label[for=user_email]   contains    Email
    
    Login With  papito@parodify.com     pwd123

    Wait For Elements State      css=a[href$=sign_out]    visible     10
    #ˆ = Starts with
    #* = Contains
    #$ = Finish with
    
    #Sleep       5

Wrong Password
    #Open Browser    https://parodify.herokuapp.com/users/sign_in
    New Page        https://parodify.herokuapp.com/users/sign_in

    Login With      papito@parodify.com     wrongPassword

    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!

Email do not exists
    #Open Browser    https://parodify.herokuapp.com/users/sign_in
    New Page        https://parodify.herokuapp.com/users/sign_in
    Login With      pedroca@parodify.com        anyPassword
    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!

Empty Email
    #Open Browser    https://parodify.herokuapp.com/users/sign_in
    New Page        https://parodify.herokuapp.com/users/sign_in
    Login With      ${EMPTY}            anyPassword
    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!

Empty Password
    #Open Browser    https://parodify.herokuapp.com/users/sign_in
    New Page        https://parodify.herokuapp.com/users/sign_in
    Login With      papito@parodify.com     ${EMPTY}
    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!
