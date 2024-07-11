*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}    2s
*** Test Cases ***
Login success
    [Documentation]    ทดสอบการ Login มากกว่า 1 role
    Open Browser    ${URL}    ${BROWSER}
    ${TestCase}=    Set Variable    TS1
    Click Element    //*[@id="root"]/div[3]/div[1]/nav/div/div[1]/button
    ${Username}=    Set Variable    644259025@webmail.npru.ac.th
    ${Password}=    Set Variable    Test-123
    Input Text    name=email    ${Username}
    Input Text    name=password    ${Password}
    Click Element    //*[@id="Get-Started"]/div/form/div[4]/input
    Wait Until Element Contains    xpath=//*[@id="Modal-SelectRoles"]/div/div/h1    What do you want to log in as?
    