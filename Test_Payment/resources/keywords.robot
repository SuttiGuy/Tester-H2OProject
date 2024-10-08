*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
LoginUser
    Sleep    3s
    Click Element    ${GetStart}
    Input Text    ${Email}    ${UserEmail}
    Input Text    ${Password}    ${UserPassword}
    Click Element    ${Login}
    Sleep    5s

Search by Province
    Click Button    ${People}
    Click Button    ${Young}
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}
    Wait Until Element Is Visible    ${NameSearch}    2s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}     ${InputSearchProvince} 
    Click Element    ${Search}
    Sleep    5s
    Click Element    ${Homestay} 


Choose the room booking
    Sleep    5s
    Scroll Element Into View    ${Scroll}
    Click Button    ${bookingHomestay}
    
Payment
    Wait Until Element Is Visible    ${Payment}    5s
    Click Button    ${Payment}
    Wait Until Element Is Visible    ${CardNumber}    4s
    Input Text    ${CardNumber}    4242 4242 4242 4242
    Input Text    ${CardExpiry}    0528
    Input Text    ${CardCvc}       121
    Input Text    ${CardName}      Suttiguy  
    Click Element     ${Pay} 

check Payment
    Wait Until Element Is Enabled    ${Checkbill}    5s
    Textarea Should Contain    ${Checkbill}    การชำระเงินของคุณได้รับการดำเนินการเรียบร้อยแล้วcted

Capture Screenshot
    Sleep    5s
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}
