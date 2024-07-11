*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}    2s
*** Test Cases ***
Open Browser And Navigate To URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    # Optional: Maximizes the browser window for better visibility
    Click Element    css=.bg-blue-500 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy0205245@gmail.com
    Sleep    ${DELAY}
    Input Text    name=password    Guyza123!
    Sleep    ${DELAY}
    Click Element    css=.border-white:nth-child(1)
    Wait Until Element Is Visible    xpath=//*[@id="avatarButton"]    timeout=10s
    Element Should Be Visible    xpath=//*[@id="avatarButton"]
    Capture Page Screenshot
