*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${NameSearch}         id=search-text
${People}             id=people-buttonHomstay
${Child}              id=Increase[2]
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=//*[@id="root"]/div[3]/div[1]/nav/div/div[2]/div/div/div[4]/div[3]/div/div/div/div/div[2]/div/div/div/div[2]/button[29]
${Date-End}      xpath=//*[@id="root"]/div[3]/div[1]/nav/div/div[2]/div/div/div[4]/div[3]/div/div/div/div/div[2]/div/div/div/div[2]/button[29]
${Search}             id=search-Homestay
${Aleart}              id=swal2-html-container
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
TC2004 ค้นหาที่พักหรือแพ็คเกจโดยที่ไม่คลิกปุ่ม เพิ่มผู้ใหญ่ค้นหาที่พักหรือแพ็คเกจโดยที่ไม่คลิกปุ่ม เพิ่มผู้ใหญ่
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window     
    InputNameHomeStay
    DefinePeople
    StartAndEnd_Date
    Click Element    ${Search}
    Sleep    3s
    Wait Until Element Contains    ${Aleart}     กรุณาเพิ่มจำนวนผู้ใหญ่ด้วย    2s
    Element Text Should Be         ${Aleart}     กรุณาเพิ่มจำนวนผู้ใหญ่ด้วย 
    Capture Screenshot
    Close Browser

*** Keywords ***
InputNameHomeStay
    Wait Until Element Is Visible    ${NameSearch}    2s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}    Kanchanaburi

DefinePeople
    Click Button    ${People}
    Click Button    ${Child}

StartAndEnd_Date
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}

Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}