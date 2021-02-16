***Settings
Documentation   Actions used in thw Home Page
Library         Browser

***Keywords
Is Logout Link Visible
    Wait For Elements State      css=a[href$=sign_out]    visible     10

Click Search
    Wait For Element Be Visible By XPATH          //a[contains(@href, "/search")]
    Click                                         //a[contains(@href, "/search")]

Search For
    [Arguments]     ${search_text}
    Click Search

    #Take Screenshot

    Wait For Element Be Visible By XPATH          //input[@id="search"]     
    Fill Text                               xpath=//input[@id="search"]       ${search_text}

    #Take Screenshot

    Press Keys                              xpath=//input[@id="search"]     Enter