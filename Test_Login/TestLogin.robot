*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${GetStart}   id=GetStarted
${Login}      id=Login
${Email}      name=email
${Google}     id=Google
${Password}    name=password
${Email1}    guy.guy0205245@gmail.com
${Email2}    Supphalak.sp@gmail.com
${Email3}    guy.guy02@gmail.com
${Password1}    Guyza123!
${Password2}    Aiinu_30052545
${Password3}    Guyza1242442
${Profile}        id=avatarButton
${Role1}     USER
${Role2}     BUSINESS
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots

*** Test Cases ***
TC6001 เข้าสู่ระบบของผู้ใช้
    [Tags]    PassLogin
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    
    Click GetStart
    Input Text    ${Email}    ${Email1}
    Input Text    ${Password}    ${Password1}
    Click Element    ${Login}
    CheckProfile
    CheckUserandRole1
    Capture Screenshot
    Close Browser

TC6002 เข้าสู่ระบบของผู้ใช้แบบมีมากกว่า 1 บทบาท
    [Tags]    PassLoginMoreOneRole
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click GetStart
    Input Text    ${Email}    ${Email2}
    Input Text    ${Password}    ${Password2}
    Click Element    ${Login}
    Selectrole
    CheckProfile
    CheckUserandRole2
    Capture Screenshot
    Close Browser

TC6003 เข้าสู่ระบบโดยที่รูปแบบอีเมลไม่ตรงกับระบบ
    [Tags]    PassLoginInvalidEmail and Password
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    Click Element    ${GetStart} 
    Input Text    ${Email}    ${Email3}
    Input Text    ${Password}    ${Password3}
    Click Element    ${Login}
    Wait Until Page Contains Element    xpath=//div[contains(text(), 'Invalid email or password!')]    timeout=10s
    Should Contain    xpath=//div[contains(text(), 'Invalid email or password!')]    Invalid email or password!
    Capture Screenshot
    Close Browser

*** Keywords ***
Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}

Capture Screenshot
    Sleep    3s
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}

Click GetStart
    Wait Until Element Is Visible    ${GetStart}    5s    
    Click Element    ${GetStart}

Selectrole
    Wait Until Element Is Visible    xpath=//*[@id="Modal-SelectRoles"]/div/button[3]    timeout=5s
    Click Element    xpath=//*[@id="Modal-SelectRoles"]/div/button[3]

CheckProfile
    Wait Until Element Is Visible    ${Profile}     timeout=10s
    Element Should Be Visible    ${Profile}     
    Sleep    3s

CheckUserandRole1
    Click Element    ${Profile} 
    Wait Until Element Is Visible    xpath=//*[@id="userDropdown"]/div[1]/div[1]
    Element Text Should Be    xpath=//*[@id="userDropdown"]/div[1]/div[1]    Suttiguy Kaewsakunnee
    Element Text Should Be    xpath=//*[@id="userDropdown"]/div[1]/div[2]    ${Role1}

CheckUserandRole2
    Click Element    ${Profile} 
    Wait Until Element Is Visible    xpath=//*[@id="userDropdown"]/div[1]/div[1]
    Element Text Should Be    xpath=//*[@id="userDropdown"]/div[1]/div[1]    Suppha1akHotel
    Element Text Should Be    xpath=//*[@id="userDropdown"]/div[1]/div[2]    ${Role2}