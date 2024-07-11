*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}    2s
*** Test Cases ***
Open Browser And Navigate To URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    Click Element    css=.bg-blue-500 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy020524@gmail.com
    Sleep    ${DELAY}
    Input Text    name=password    Guyza123!
    Sleep    ${DELAY}
    Click Element    css=.border-white:nth-child(1)
    Wait Until Element Contains    xpath=/html/body/div[2]/div    Invalid email or password!
    Capture Page Screenshot
    Close Browser
