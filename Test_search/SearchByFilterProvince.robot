*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${FilterProvince}    id=กรุงเทพมหานคร
${Scroll}        id=butttonSelect-Package
${Province-HomeStay}    id=Province-HomeStay
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/FilterProvince

*** Test Cases ***
Open Browser get FilterByProvince
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    
    FilterByProvince
    Create Screenshot Directory
    Capture Screenshot
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}
    Remove Old Screenshots

Remove Old Screenshots
    ${files}    List Files In Directory     ${SCREENSHOT_DIR}
    FOR    ${file}    IN    @{files}
        Remove File    ${SCREENSHOT_DIR}/${file}
    END

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}
FilterByProvince
    Sleep    3s
    Scroll Element Into View    ${Scroll}
    Wait Until Element Is Visible    ${Scroll}     timeout=10s
    Click Element    ${FilterProvince} 
    Wait Until Element Is Visible    ${FilterProvince}     timeout=10s
    Element Text Should Be    ${Province-HomeStay}    กรุงเทพมหานคร