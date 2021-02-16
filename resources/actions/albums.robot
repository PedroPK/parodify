***Settings
Documentation		Page for Albums

***Keywords
Press Play/Pause Button
    [Arguments]         ${text_value}                 ${class_value}
    Get Class by XPATH  //h2[contains(text(), ${text_value})]/../../div/a/i     ${class_value}
    Click       xpath=//h2[contains(text(), ${text_value})]/../../div[contains(@class, play-button)]/a
