***Settings
Documentation       Basic archieve to implement the initial structure of this test project

Library             Browser

Resource            actions/login_actions.robot
Resource            actions/home_actions.robot

***Keywords
Get Text Content by CSS
    [Arguments]     ${css_value}                   ${content}
    Get Text        css=${css_value}    equal      ${content} 

Get Text Content by XPATH
    [Arguments]     ${xpath_value}
    Get Text        xpath=${xpath_value}

Get Class by XPATH
    [Arguments]     ${xpath_value}                          ${class_value}
    Get Classes     xpath=${xpath_value}      contains      ${class_value}

Wait For Element Be Visible By XPATH
    [Arguments]     ${xpath_value}
    Wait For Elements State     xpath=${xpath_value}        visible         10