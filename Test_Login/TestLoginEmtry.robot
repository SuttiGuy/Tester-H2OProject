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
    Mouse Over    css=.form-control:nth-child(2) .inline-block
    Wait Until Element Is Visible    xpath=//*[@id="Get-Started"]/div/form/div[1]/label/div/span   timeout=10s
    Element Should Be Visible    xpath=//*[@id="Get-Started"]/div/form/div[1]/label/div/span    Please enter email
    Close Browser
