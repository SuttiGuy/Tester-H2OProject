*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}    2s
${Username}    Supphalak.sp@gmail.com
${Password}    Aiinu_30052545
${GetStart}   id=GetStarted
${Login}      id=Login
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
Login success
    [Documentation]    ทดสอบการ Login มากกว่า 1 role
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    ${GetStart}
    Input Text    name=email    ${Username}
    Input Text    name=password    ${Password}
    Click Element    ${Login}
    Sleep    2s
    Click Element    xpath=//dialog[@id='Modal-SelectRoles']/div/button[4]/span/div/h3
    Sleep    5s
    Capture Screenshot
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}