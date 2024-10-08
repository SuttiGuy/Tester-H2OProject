*** Keywords ***
DefinePeople
    Click Button    ${People}
    Click Button    ${Young}

StartandEnd_Date
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}

InputNameProvince
    Wait Until Element Is Visible    ${NameSearch}    2s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}     ${InputSearchProvince} 

InputNameHomeStay
    Wait Until Element Is Visible    ${NameSearch}    2s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}    ${InputSearchHomestay}

InputNameHomeStay2
    Wait Until Element Is Visible    ${NameSearch}    2s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}    หมู่บ้านโคกระโหลก


InputNamePackage
    Click Button    ${SearchPackage}
    Input Text    ${NameSearch}    

InputNamePackage2
    Click Button    ${SearchPackage}
    Input Text    ${NameSearch}    ท่องเที่ยวริมทะเลไปหาปูกุ้งหมึก

Capture Screenshot
    Sleep    5s
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}
