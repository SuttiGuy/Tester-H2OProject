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
    Input Text    name=password    Guyzapa112!
    Sleep    ${DELAY}
    Click Element    css=.border-white:nth-child(1)
    Wait Until Element Contains    xpath=/html/body/div[2]/div    Invalid Password!
    Capture Page Screenshot
    # Add more test steps here if needed
    # Close Browser    # Close the browser after the test completes
