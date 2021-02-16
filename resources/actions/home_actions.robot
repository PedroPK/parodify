***Settings
Documentation   Actions used in thw Home Page
Library         Browser

***Keywords
Is Logout Link Visible
    Wait For Elements State      css=a[href$=sign_out]    visible     10

Search For
    [Arguments]     ${search_text}
    Wait For Element Be Visible By XPATH          //a[contains(@href, "/search")]
    Click                                         //a[contains(@href, "/search")]

    Take Screenshot

    Wait For Element Be Visible By XPATH          //input[@id="search"]     
    Fill Text                               xpath=//input[@id="search"]       ${search_text}

    Take Screenshot

    Press Keys                              xpath=//input[@id="search"]     Enter