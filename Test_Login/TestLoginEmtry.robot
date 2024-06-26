*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}      2s

*** Test Cases ***
Open Browser And Navigate To URL
    [Documentation]    This test case opens the browser, navigates to the specified URL, interacts with elements, and captures a screenshot.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    css=.bg-blue-500 
    Sleep    ${DELAY}
    Click Element    css=.border-white:nth-child(1)
    Sleep    ${DELAY}
    Capture Page Screenshot
    Close Browser
