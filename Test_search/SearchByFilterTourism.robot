*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${FilterByTourismWater}    id=การท่องเที่ยวทางน้ำ
${Scroll}        id=footer
${Type-Package}    id=Type-Package
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/FilterTourism

*** Test Cases ***
Open Browser get FilterByTourismWater
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    
    FilterByTourismWater
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
FilterByTourismWater
    Wait Until Element Is Visible    ${Scroll}     timeout=10s
    Scroll Element Into View    ${Scroll}
    Click Element    ${FilterByTourismWater} 
    Wait Until Element Is Visible    ${FilterByTourismWater}     timeout=10s
    Element Text Should Be    ${Type-Package}    การท่องเที่ยวทางน้ำ