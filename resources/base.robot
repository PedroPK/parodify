***Settings
Documentation       Basic archieve to implement the initial structure of this test project

Library             Browser

Resource            actions/login_actions.robot
Resource            actions/home_actions.robot
Resource            actions/search.robot
Resource            actions/albums.robot

***Keywords
Wait For H2 by Text
    [Arguments]                             ${text_value} 
    Wait For Element Be Visible By XPATH  //h2[contains(text(), ${text_value})]

Get Text Content by CSS
    [Arguments]     ${css_value}                   ${content}
    Get Text        css=${css_value}    equal      ${content} 

Get Class by XPATH
    [Arguments]     ${xpath_value}                          ${class_value}
    Get Classes     xpath=${xpath_value}      contains      ${class_value}

Wait For Element Be Visible By XPATH
    [Arguments]     ${xpath_value}
    Wait For Elements State     xpath=${xpath_value}        visible         10