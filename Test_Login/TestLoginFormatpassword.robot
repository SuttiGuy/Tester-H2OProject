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
    Maximize Browser Window    # Optional: Maximizes the browser window for better visibility
    Click Element    ${GetStart} 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy0205245@gmail.com
    Sleep    ${DELAY}
    Input Text    name=password    Guyza12331323
    Sleep    ${DELAY}
    Click Element    ${Login}
    Mouse Over    css=.inline-block
    Wait Until Element Is Visible    xpath=//*[@id="Get-Started"]/div/form/div[2]/label/div/span/span    timeout=10s
    Element Should Be Visible    xpath=//*[@id="Get-Started"]/div/form/div[2]/label/div/span/span    The password format is incorrect.
    Capture Screenshot
    Close Browser
    
*** Keywords ***
Create Screenshot Directory
    [Documentation]    Create the directory to store screenshots.
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    [Documentation]    Capture a screenshot and save it with a timestamp.
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}