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
Open Browser Navigate To URL And Login success
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    #Maximizes the browser window
    Click Element    ${GetStart}  
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy0205245@gmail.com
    Input Text    name=password    Guyza123!
    Sleep    ${DELAY}
    Click Element    ${Login}
    Wait Until Element Is Visible    xpath=//*[@id="avatarButton"]    timeout=10s
    Element Should Be Visible    xpath=//*[@id="avatarButton"]    
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