***Settings
Documentation   Testes da Página de Login
Library         Browser

Test Teardown   Take Screenshot

***Keywords***
Access Login Page
    New Page        https://parodify.herokuapp.com/users/sign_in

Login With
    [Arguments]     ${email_arg}        ${password_arg}
    Fill Text       id=user_email       ${email_arg}
    Fill Text       id=user_password    ${password_arg}
    Click           css=input[type=submit]

Assert Wrong Access Data
    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!    

***Test Cases
Login com Sucesso
    #Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium
    Access Login Page

    Get Text    label[for=user_email]   contains    Email
    
    Login With  papito@parodify.com     pwd123

    Wait For Elements State      css=a[href$=sign_out]    visible     10
    #ˆ = Starts with
    #* = Contains
    #$ = Finish with
    
    #Sleep       5

Wrong Password
    #Open Browser    https://parodify.herokuapp.com/users/sign_in
    Access Login Page
    Login With      papito@parodify.com     wrongPassword
    Assert Wrong Access Data

Email do not exists
    #Open Browser    https://parodify.herokuapp.com/users/sign_in
    Access Login Page
    Login With      pedroca@parodify.com        anyPassword
    Assert Wrong Access Data

Empty Email
    #Open Browser    https://parodify.herokuapp.com/users/sign_in
    Access Login Page
    Login With      ${EMPTY}            anyPassword
    Assert Wrong Access Data

Empty Password
    #Open Browser    https://parodify.herokuapp.com/users/sign_in
    Access Login Page
    Login With      papito@parodify.com     ${EMPTY}
    Assert Wrong Access Data
