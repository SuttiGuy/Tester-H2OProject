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
    Input Text    name=email    guy.guy020524@gmail.com
    Input Text    name=password    Guyza
    Click Element    css=.border-white:nth-child(1)
    Capture Page Screenshot
    Mouse Over    css=.inline-block
    Wait Until Element Is Visible    xpath=//*[@id="Get-Started"]/div/form/div[2]/label/div/span   timeout=10s
    Element Should Be Visible    xpath=//*[@id="Get-Started"]/div/form/div[2]/label/div/span    Password must be at least 8 characters
    Close Browser 