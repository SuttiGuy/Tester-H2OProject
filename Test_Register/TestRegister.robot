*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}      2s
${GetStart}   id=GetStarted
${Sing-up}    id=NoAccount-HaveAccount
${Name}       name=name
${LastName}   name=lastName
${Email}      name=email
${Password}   name=passwprd

*** Test Cases ***
Open Browser And Navigate To URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    
    Click Element    ${GetStart}
    Click Element    ${Sing-up}
    InputName
    InputLastName
    InputEmail
    Sleep    5s

*** Keywords ***
InputName
    Wait Until Element Is Visible    ${Name}    2s
    Input Text      ${Name}    Suttiguy 

InputLastName
    Input Text    ${LastName}    Kaewsakun

InputEmail
    Input Text    ${Email}    Payterlon@gmail.com