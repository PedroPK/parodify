***Settings
Documentation   Actions used in thw Home Page
Library         Browser

***Keywords
Is Logout Link Visible
    Wait For Elements State      css=a[href$=sign_out]    visible     10

Click Search
    Wait For Element Be Visible By XPATH          //a[contains(@href, "/search")]
    Click                                         //a[contains(@href, "/search")]

Click Buscar
    Wait For H2 by Text         Buscar
    Click                       css=a[href*=search]

