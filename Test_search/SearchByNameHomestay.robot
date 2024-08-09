*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    XML

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${NameSearch}         id=search-text
${People}             id=people-buttonHomstay
${Young}              id=Increase[1]
${Child}              id=Increase[2]
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=//*[@id="root"]/div[3]/div[1]/nav/div/div[2]/div/div/div[4]/div[3]/div/div/div/div/div[2]/div/div/div/div[2]/button[25]
${Date-End}      xpath=//*[@id="root"]/div[3]/div[1]/nav/div/div[2]/div/div/div[4]/div[3]/div/div/div/div/div[2]/div/div/div/div[2]/button[27]
${Search}             id=search-Homestay
${Detail-HomeStay}    id=Name-Homestay
${Detail-Room}        xpath=//*[@id="right-card"]/div/div[1]/span/div
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/NameHomeStay

*** Test Cases ***
TC2002 ค้นหาที่พักโดยค้นหาจากชื่อที่พัก
    Open Browser    ${URL}    ${BROWSER}  
    InputNameHomeStay
    DefinePeople
    StartandEnd_Date
    Click Element    ${Search}
    Wait Until Element Contains    ${Detail-HomeStay}    บ้านปายดิน    10s  # เพิ่มเวลาในการรอหากจำเป็น
    Element Should Contain    ${Detail-HomeStay}    บ้านปายดิน
    Scroll Right
    Wait Until Element Contains    ${Detail-Room}    2
    Element Should Contain    ${Detail-Room}    2
    Create Screenshot Directory
    Capture Screenshot
    Close Browser

*** Keywords ***
InputNameHomeStay
    Wait Until Element Is Visible    ${NameSearch}    2s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}    บ้านปายดิน

DefinePeople
    Click Button    ${People}
    Click Button    ${Young}
    Click Button    ${Young}
    Click Button    ${Young}
    Click Button    ${Child}
    Click Button    ${Child}

StartandEnd_Date
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}

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
Scroll Right
    Execute JavaScript    window.scrollBy(150, 0)   # scroll right
