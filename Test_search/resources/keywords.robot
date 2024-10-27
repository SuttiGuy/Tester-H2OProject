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
    Input Text      ${NameSearch}     ${InputSearchProvince} 

InputNameHomeStay
    Wait Until Element Is Visible    ${NameSearch}    2s
    Input Text      ${NameSearch}    ${InputSearchHomestay}

InputNameHomeStay2
    Wait Until Element Is Visible    ${NameSearch}
    Input Text      ${NameSearch}    โฮมสเตย์ไปกันใหญ่

InputNameProvincePackage
    Wait Until Element Is Visible    ${SearchPackage}    5s
    Click Button    ${SearchPackage}
    Input Text    ${NameSearch}    ${InputSearchProvincePackage} 

InputNamePackage
    Wait Until Element Is Visible    ${SearchPackage}    5s
    Click Button    ${SearchPackage}
    Input Text    ${NameSearch}    ${InputSearchPackage}
    
InputNamePackage2
    Wait Until Element Is Visible    ${SearchPackage}    5s
    Click Button    ${SearchPackage}
    Input Text    ${NameSearch}    ฝึกทำยำเนื้อ

StartandEnd_Package    
    Click Button    ${Date}
    Click Button    ${Package-Start}
    Click Button    ${Package-End}

SortByPrice
    Scroll Element Into View    ${SearchPackage}
    Click Element    ${Sort}
    Click Element    ${PriceHightToLow}

Capture Screenshot
    Sleep    5s
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}
