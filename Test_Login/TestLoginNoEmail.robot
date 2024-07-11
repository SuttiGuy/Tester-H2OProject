*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}      2s

*** Test Cases ***
Open Browser And Navigate To URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    css=.bg-blue-500    
    Click Element    css=.bg-blue-500 
    Input Text    name=password    Guy123!
    Click Element    css=.border-white:nth-child(1)
    Mouse Over    css=.form-control:nth-child(2) .inline-block
    Wait Until Element Is Visible    xpath=//*[@id="Get-Started"]/div/form/div[1]/label/div/span   timeout=10s
    Element Should Be Visible    xpath=//*[@id="Get-Started"]/div/form/div[1]/label/div/span    Please enter email
    Capture Page Screenshot
    Close Browser

