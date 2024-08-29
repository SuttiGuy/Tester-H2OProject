*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    XML

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${GetStart}   id=GetStarted
${Login}      id=Login
${Email}      name=email
${Password}    name=password 
${UserEmail}        guy.guy0205245@gmail.com
${UserPassword}    Guyza123!
${NameSearch}         id=search-text
${People}             id=people-buttonHomstay
${Young}              id=Increase[1]
${Child}              id=Increase[2]
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=(//button[@type='button'])[40]
${Date-End}      xpath=(//button[@type='button'])[12]
${Search}             id=search-Homestay
${Detail-HomeStay}    id=Name-Homestay
${NameDetail}         xpath=//*[@id="homeStayDetail"]/div[4]/div[1]/div[1]/div[1]/div/div[1]
${Detail}             xpath=//*[@id="homeStayDetail"]/div[4]/div[1]/div[1]/div[2]/div
${Detail-Room}        id=detailRoom
${Review}             xpath=//*[@id="homeStayDetail"]/div[4]/div[1]/div[1]/div[1]/div/div[2]/div/div[2]
${Facilities}         id=facilities
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/HomeStay

*** Test Cases ***
TC3001 ดูรายละเอียดที่พัก
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    LoginUser
    InputNameHomeStay
    DefinePeople
    StartandEnd_Date
    Click Element    ${Search}
    CheckDetailHomestay
    Create Screenshot Directory
    Capture Screenshot
    Close Browser

*** Keywords ***
LoginUser
    Sleep    5s
    Click Element    ${GetStart}
    Input Text    ${Email}    ${UserEmail}
    Input Text    ${Password}    ${UserPassword}
    Click Element    ${Login}
InputNameHomeStay
    Wait Until Element Is Visible    ${NameSearch}    5s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}    บ้านปายดิน

DefinePeople
    Click Button    ${People}
    Click Button    ${Young}
    Click Button    ${Young}

StartandEnd_Date
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}


CheckDetailHomestay
    Wait Until Element Contains    ${Detail-HomeStay}    บ้านปายดิน    
    Click Element    ${Detail-HomeStay}
    Wait Until Element Is Visible    ${NameDetail}    
    Element Text Should Be    ${NameDetail}    บ้านปายดิน ออร์แกนิค ฟาร์มสเตย์วอร์ไซต์
    Wait Until Element Is Visible    ${Review}    
    Element Should Contain    ${Review}    รีวิว
    Wait Until Element Is Visible    ${Detail}    
    Element Text Should Be    ${Detail}      ทางที่พักของเรา บ้านปายดิน ออร์แกนิค ฟาร์มสเตย์ มีความตั้งใจให้ลูกค้าที่เดินทางมา มีความรู้สึกเหมือนมาพักผ่อนที่ บ้าน 🏠 ท่ามกลางความเป็นธรรมชาติ สงบ ไม่วุ่นวาย เพื่อจะได้ชาร์ตแบตและพักผ่อนอย่างเต็มที่ โดยพร้อมที่จะต้อนรับดูแล ด้วยความอบอุ่น จริงใจ เหมือนมาพักบ้านญาติต่างหวัด อาจไม่หรูหราสะดวกสบาย แต่ที่นี่จะเป็นที่ ❤️ พักกาย..พักใจ ❤️ ให้กับทุกๆคน ก่อนตัดสินใจมาพักผ่อน อยากให้ดูรายละเอียดต่างๆ เพื่อเป็นข้อมูลในการตัดสินใจก้านพักค่ะ
    Scroll Element Into View    ${Detail-Room}
    Element Should Contain    ${Facilities}    สิ่งอำนวยความสะดวก

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


