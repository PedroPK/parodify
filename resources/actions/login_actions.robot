**Settings
Documentation       Ações relacionadas à Tela de Login

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