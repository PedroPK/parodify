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


Click Sertanejo Category
    Wait For Element Be Visible By XPATH     //img[contains(@src, "sertanejo.png")]/..
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text Content by CSS     h2             Sertanejo
	

Click Artist/Title
    [Arguments]         ${text_value}
    Wait For Element Be Visible By XPATH  //p[contains(text(), ${text_value})]/..
    Click                       xpath=//p[contains(text(), ${text_value})]/..