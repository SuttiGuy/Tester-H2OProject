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
    Input Text    name=password    Guy123!
    Click Element    ${Login}
    Mouse Over    css=.form-control:nth-child(2) .inline-block
    Wait Until Element Is Visible    xpath=//*[@id="Get-Started"]/div/form/div[1]/label/div/span   timeout=10s
    Element Should Be Visible    xpath=//*[@id="Get-Started"]/div/form/div[1]/label/div/span    Please enter email
    Capture Screenshot
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}