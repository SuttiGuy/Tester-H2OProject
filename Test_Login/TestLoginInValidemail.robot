*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}      2s
${GetStart}   id=GetStarted
${Login}      id=Login
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
Open Browser And Navigate To URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    Click Element    ${GetStart} 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy020524@gmail.com
    Sleep    ${DELAY}
    Input Text    name=password    Guyza123!
    Sleep    ${DELAY}
    Click Element    ${Login}
    Wait Until Element Contains    xpath=/html/body/div[2]/div    Invalid email or password!
    Capture Screenshot
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}