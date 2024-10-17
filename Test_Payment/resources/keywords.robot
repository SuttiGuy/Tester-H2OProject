*** Keywords ***
LoginUser
    Sleep    3s
    Click Element    ${GetStart}
    Input Text    ${Email}    ${UserEmail}
    Input Text    ${Password}    ${UserPassword}
    Click Element    ${Login}
    Sleep    5s

Search by Homestay
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


Search by Package
    Click Button    ${SelectPackage} 
    Click Button    ${People}
    Click Button    ${Young}
    Click Button    ${Date}
    Click Button    ${Package-Start}
    Click Button    ${Package-End}
    Click Element    ${Search}
    Sleep    5s
    Click Element    ${Homestay} 

Choose the room booking
    Sleep    5s
    Scroll Element Into View    ${Scroll}
    Click Button    ${bookingHomestay}
    Wait Until Element Is Visible    ${Payment}    5s
    Click Button    ${Payment}

Choose Package
    Sleep    5s
    Scroll Element Into View    ${ScrollPackage}
    Click Button    ${bookingPackage}
    
Payment
    Wait Until Element Is Visible    ${CardNumber}    4s
    Input Text    ${CardNumber}    4242 4242 4242 4242
    Input Text    ${CardExpiry}    0528
    Input Text    ${CardCvc}       121
    Input Text    ${CardName}      Suttiguy
    Scroll Element Into View    ${Pay}  
    Click Element     ${Pay} 

Alert    
    Sleep    4s
    Wait Until Element Is Enabled     ${Alert}    5s
    Click Button    ${Alert}


Pay
    Wait Until Element Is Visible    ${CardNumber}    4s
    Input Text    ${CardNumber}    4242 4242 4242 4242
    Input Text    ${CardExpiry}    0528
    Input Text    ${CardCvc}       121
    Input Text    ${CardName}      Suttiguy  
    Scroll Element Into View    ${Pay} 
    Click Element     ${Pay} 

check Payment
    Wait Until Element Is Enabled    ${Checkbill}    5s
    Element Should Be Visible     ${Checkbill}    การชำระเงินของคุณได้รับการดำเนินการเรียบร้อยแล้ว

Capture Screenshot
    Sleep    5s
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}
