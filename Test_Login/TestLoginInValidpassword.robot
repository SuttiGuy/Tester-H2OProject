*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}         Edge
${URL}             http://localhost:5173
${DELAY}           3s
${GetStart}        id=GetStarted
${Login}           id=Login
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
Open Browser And Navigate To URL
    Create Screenshot Directory
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    ${GetStart}
    Input Text    name=email    guy.guy0205245@gmail.com
    Input Text    name=password    Guyzapa1234!
    Sleep    ${DELAY}
    Click Element    ${Login}
    Wait Until Element Contains    xpath=/html/body/div[2]/div    Invalid Password!
    Sleep    ${DELAY}
    Capture Screenshot
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}
