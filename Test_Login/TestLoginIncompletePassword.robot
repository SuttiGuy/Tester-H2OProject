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
    Input Text    name=email    guy.guy020524@gmail.com
    Input Text    name=password    Guyza
    Click Element    ${Login}
    Mouse Over    css=.inline-block
    Wait Until Element Is Visible    xpath=//*[@id="Get-Started"]/div/form/div[2]/label/div/span   timeout=10s
    Element Should Be Visible    xpath=//*[@id="Get-Started"]/div/form/div[2]/label/div/span    Password must be at least 8 characters
    Capture Screenshot
    Close Browser 

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}