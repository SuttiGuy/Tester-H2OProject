*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}      2s

*** Test Cases ***
Open Browser And Navigate To URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    
    Click Element    css=.bg-blue-500
    Click Element    css=.underline
    Sleep    ${DELAY}    
    