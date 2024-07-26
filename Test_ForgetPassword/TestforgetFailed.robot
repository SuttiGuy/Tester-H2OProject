*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}      2s
${GetStart}   id=GetStarted
${EMAIL}      guy.guy02052456@gmail.com
${PHONE}      0982510776
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
Open Browser Navigate To URL And Forget Password
    [Documentation]    Forgot Password process Failed to send OTP.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    # Maximizes the browser window
    Click Element    ${GetStart}  
    Click Element    css=.label-text-alt    
    Sleep    ${DELAY}
    Input Text    id=swal2-input    ${EMAIL}
    Click Element    css=.swal2-confirm
    Sleep    ${DELAY}
    Input Text    id=swal2-input    ${PHONE}
    Click Element    css=.swal2-confirm
    Sleep    10s
    Wait Until Element Is Visible    id=reCAPTCHA    timeout=10s
    Click Element    id=reCAPTCHA
    #Wait Until Element Contains    xpath=/html/body/div[2]/div    Failed to send OTP. Please try again.

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