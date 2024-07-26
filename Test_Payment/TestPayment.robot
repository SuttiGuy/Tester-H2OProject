*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173/payment
${DELAY}      2s
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
Open Browser Navigate To URL Payment
    [Documentation]    Forgot Password process Failed to send OTP.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    # Maximizes the browser window
    Click Element    xpath=//*[@id="root"]/div[3]/div[2]/div/button
    Wait Until Element Is Visible    id=imgqr    timeout=3s
      Capture Screenshot
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}