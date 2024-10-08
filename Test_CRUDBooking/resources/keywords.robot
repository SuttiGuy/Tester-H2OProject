*** Keywords ***
LoginUser
    Sleep    3s
    Click Element    ${GetStart}
    Input Text    ${Email}    ${UserEmail}
    Input Text    ${Password}    ${UserPassword}
    Click Element    ${Login}

Click Dashboard
    Wait Until Element Is Visible    ${Profile}    10s
    Click Element    ${Profile}
    Click Element    ${Dashboard}

Click Booking
    Wait Until Element Is Visible    ${Booking}    10s
    Click Element    ${Booking}


Check Status
    Wait Until Element Is Visible    ${Status}    15s
    Element Should Contain    ${Status}    Confirmed


