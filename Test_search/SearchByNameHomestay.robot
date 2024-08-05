*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

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
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
TC2001 ค้นหาที่พักโดยค้นหาจากจังหวัดหรือชื่อที่พัก
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window     
    InputNameHomeStay
    DefinePeople
    StartandEnd_Date
    Click Element    ${Search}
    Wait Until Element Contains    ${Detail-HomeStay}    Kanchanaburi    2s
    Capture Screenshot
    Close Browser

*** Keywords ***
InputNameHomeStay
    Wait Until Element Is Visible    ${NameSearch}    2s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}    Kanchanaburi

DefinePeople
    Click Button    ${People}
    Click Button    ${Young}
    Click Button    ${Child}

StartandEnd_Date
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}

Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}
