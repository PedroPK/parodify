***Settings
Documentation		Represents the Search page, as a Page Object file

***Keywords
Search For
    [Arguments]     ${search_text}
    Click Search

    #Take Screenshot

    Wait For Element Be Visible By XPATH          //input[@id="search"]     
    Fill Text                               xpath=//input[@id="search"]       ${search_text}

    #Take Screenshot

    Press Keys                              xpath=//input[@id="search"]     Enter
