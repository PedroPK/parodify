***Settings
Documentation   Testes da Página de Login
Library         Browser

#Test Teardown   Take Screenshot

Resource        ../resources/base.robot

***Test Cases
Login com Sucesso
    [Tags]      smoke
    #Open Browser    https://parodify.herokuapp.com/users/sign_in    chromium
    Access Login Page

    Get Text    label[for=user_email]   contains    Email
    
    Login With  papito@parodify.com     pwd123

    Is Logout Link Visible

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
