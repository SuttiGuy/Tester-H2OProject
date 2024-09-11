*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot
Library    OperatingSystem


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