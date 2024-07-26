*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}      2s
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
Open Browser Navigate To URL And Forget Password
    [Documentation]    Forgot Password process Failed to send OTP.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    # Maximizes the browser window
    Click Element    xpath=//div[@id='butttonSelect-Package']/button[3]
    Wait Until Element Is Visible    xpath=(//img[@alt='images to cards'])[3]    timeout=10s
    Scroll Element Into View    id=footer
    Element Text Should Be    xpath=/html/body/div/div[3]/div[2]/div[2]/div[2]/div[1]/div/div[1]/div    ล่องเรือเจ้าพระยา
    Capture Screenshot
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}