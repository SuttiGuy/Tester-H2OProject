*** Settings ***
Library    SeleniumLibrary
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

Click bookingPackage
    Wait Until Element Is Visible    ${Package}     5s
    Click Button    ${Package} 

Check Status
    Wait Until Element Is Visible    ${StatusPackage}    15s
    Element Should Contain    ${StatusPackage}    Confirmed


Capture Screenshot
    Sleep    5s
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}