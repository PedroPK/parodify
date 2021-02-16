***Settings
Documentation   Testes da Página de Login
Library         Browser

#Test Teardown   Take Screenshot

Resource        ../resources/base.robot

***Test Cases
Login com Sucesso
    [Tags]      smoke
    Access Login Page

    Get Text    label[for=user_email]   contains    Email
    
    Login With  papito@parodify.com     pwd123

    Is Logout Link Visible

    #ˆ = Starts with
    #* = Contains
    #$ = Finish with
    
    #Sleep       5

Wrong Password
    Access Login Page
    Login With      papito@parodify.com     wrongPassword
    Assert Wrong Access Data

Email do not exists
    Access Login Page
    Login With      pedroca@parodify.com        anyPassword
    Assert Wrong Access Data

Empty Email
    Access Login Page
    Login With      ${EMPTY}                anyPassword
    Assert Wrong Access Data

Empty Password
    Access Login Page
    Login With      papito@parodify.com     ${EMPTY}
    Assert Wrong Access Data