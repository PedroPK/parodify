***Settings
Documentation   Testes da Página de Login
Library         Browser

***Test Cases
Login com Sucesso
    New Page    https://parodify.herokuapp.com/users/sign_in

    Get Text    label[for=user_email]   contains    Email
    
    Fill Text   id=user_email           papito@parodify.com
    Fill Text   id=user_password        pwd123
    
    Sleep       10