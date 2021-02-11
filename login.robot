***Settings
Documentation   Testes da Página de Login
Library         Browser

***Test Cases
Login com Sucesso
    Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium

    Get Text    label[for=user_email]   contains    Email
    
    Fill Text   id=user_email           papito@parodify.com
    Fill Text   id=user_password        pwd123

    Click       css=input[type=submit]

    Wait For Elements State      css=a[href$=sign_out]    visible     10
    #ˆ = Starts with
    #* = Contains
    #$ = Finish with
    
    #Sleep       5

Wrong Password
    Open Browser    https://parodify.herokuapp.com/users/sign_in

    Fill Text       id=user_email       papito@parodify.com
    Fill Text       id=user_password    wrongPassword

    Click           css=input[type=submit]

    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!

Email do not exists
    Open Browser    https://parodify.herokuapp.com/users/sign_in
    Fill Text       id=user_email            pedroca@parodify.com
    Fill Text       id=user_password    anyPassword
    Click           css=input[type=submit]
    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!

Empty Email
    Open Browser    https://parodify.herokuapp.com/users/sign_in
    Fill Text       id=user_email            ${EMPTY}
    Fill Text       id=user_password    anyPassword
    Click           css=input[type=submit]
    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!

Empty Password
    Open Browser    https://parodify.herokuapp.com/users/sign_in
    Fill Text       id=user_email            papito@parodify.com
    Fill Text       id=user_password    ${EMPTY}
    Click           css=input[type=submit]
    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!
