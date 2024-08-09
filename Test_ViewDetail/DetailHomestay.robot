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
${NameDetail}         xpath=//*[@id="homeStayDetail"]/div[3]/div[1]/div[1]/div[1]/div/div[1]
${Detail}             xpath=//*[@id="homeStayDetail"]/div[3]/div[1]/div[1]/div[2]/div
${Detail-Room}        xpath=//*[@id="right-card"]/div/div[1]/span/div
${Review}             xpath=//*[@id="homeStayDetail"]/div[3]/div[1]/div[1]/div[1]/div/div[2]
${Scroll}
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/HomeStay

*** Test Cases ***
TC3001 ดูรายละเอียดที่พัก
    Open Browser    ${URL}    ${BROWSER}
    InputNameHomeStay
    DefinePeople
    StartandEnd_Date
    Click Element    ${Search}
    Check
    Create Screenshot Directory
    Capture Screenshot
    Close Browser

*** Keywords ***
InputNameHomeStay
    Wait Until Element Is Visible    ${NameSearch}    5s
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

Check
    Wait Until Element Contains    ${Detail-HomeStay}    บ้านปายดิน    5s
    Click Element    ${Detail-HomeStay}
    Wait Until Element Is Visible    ${NameDetail}    5s
    Element Text Should Be    ${NameDetail}    บ้านปายดิน ออร์แกนิค ฟาร์มสเตย์วอร์ไซต์
    Wait Until Element Is Visible    ${Review}    5s
    Element Should Contain    ${Review}    รีวิว
    Wait Until Element Is Visible    ${Detail}    5s
    Element Text Should Be    ${Detail}      ทางที่พักของเรา บ้านปายดิน ออร์แกนิค ฟาร์มสเตย์ มีความตั้งใจให้ลูกค้าที่เดินทางมา มีความรู้สึกเหมือนมาพักผ่อนที่ บ้าน 🏠 ท่ามกลางความเป็นธรรมชาติ สงบ ไม่วุ่นวาย เพื่อจะได้ชาร์ตแบตและพักผ่อนอย่างเต็มที่ โดยพร้อมที่จะต้อนรับดูแล ด้วยความอบอุ่น จริงใจ เหมือนมาพักบ้านญาติต่างหวัด อาจไม่หรูหราสะดวกสบาย แต่ที่นี่จะเป็นที่ ❤️ พักกาย..พักใจ ❤️ ให้กับทุกๆคน ก่อนตัดสินใจมาพักผ่อน อยากให้ดูรายละเอียดต่างๆ เพื่อเป็นข้อมูลในการตัดสินใจก้านพักค่ะ
    Scroll Element Into View    locator

Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}
    Remove Old Screenshots

Remove Old Screenshots
    ${files}    List Files In Directory    ${SCREENSHOT_DIR}
    FOR    ${file}    IN    @{files}
        Remove File    ${SCREENSHOT_DIR}/${file}
    END

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}


