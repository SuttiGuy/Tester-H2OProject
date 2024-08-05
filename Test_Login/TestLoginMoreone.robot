*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}      2s
${Username}   Supphalak.sp@gmail.com
${Password}   Aiinu_30052545
${GetStart}   id=GetStarted
${Login}      id=Login
${Avatar}     id=avatarButton
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
TC6002 เข้าสู่ระบบของผู้ใช้แบบมีมากกว่า 1 บทบาท
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login
    Selectrole
    Avatar
    DashBord
    Wait Until Element Contains    xpath=//*[@id="root"]/div[3]/div[2]/div[2]/div/div[1]/div/h1    ชื่อธุรกิจ    10s
    Element Text Should Be    xpath=//*[@id="root"]/div[3]/div[2]/div[2]/div/div[1]/div/h1    'ชื่อธุรกิจ : Suppha1akHotel'
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}

Login
    Click Element    ${GetStart}
    Input Text    name=email    ${Username}
    Input Text    name=password    ${Password}
    Click Element    ${Login}

Selectrole
    Wait Until Element Is Visible    xpath=//*[@id="Modal-SelectRoles"]/div/button[3]    timeout=5s
    Click Element    xpath=//*[@id="Modal-SelectRoles"]/div/button[3]

Avatar
    Wait Until Element Is Visible    ${Avatar}     timeout=5s
    Click Element    ${Avatar}

DashBord
    Click Element    xpath=//*[@id="userDropdown"]/ul/li[1]/a