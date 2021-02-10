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
    
    Sleep       5