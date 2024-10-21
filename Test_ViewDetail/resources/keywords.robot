*** Keywords ***
DefinePeople
    Sleep    3s
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
    Click Element    ${Search}
    Sleep    3s

choose HomeStay
    Click Element    id=default-carousel

ViewDetail
    Wait Until Element Is Visible    id=facilities    5s
    Scroll Element Into View    id=facilities
    Element Should Be Visible    id=facilities    สิ่งอำนวยความสะดวก
    Scroll Element Into View    ${Room}
    Element Should Be Visible    ${Room}    ${bookimg} 
    Sleep    3s

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}