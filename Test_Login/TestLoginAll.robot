*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${DELAY}    2s

*** Test Cases ***
Login by Keyword TC01
    [Documentation]    ทดสอบการ Login 
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    # Optional: Maximizes the browser window for better visibility
    Click Element    css=.bg-blue-500 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy0205245@gmail.com
    Sleep    ${DELAY}
    Input Text    name=password    Guyza123!
    Sleep    ${DELAY}
    Click Element    css=.border-white:nth-child(1)
    Wait Until Element Is Visible    xpath=//*[@id="avatarButton"]    timeout=10s
    Element Should Be Visible    xpath=//*[@id="avatarButton"]
    Close Browser

Login by Keyword TC02
    [Documentation]    ทดสอบการ Login แบบอีเมลไม่ตรง 
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    # Optional: Maximizes the browser window for better visibility
    Click Element    css=.bg-blue-500 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy020524@gmail.com
    Sleep    ${DELAY}
    Input Text    name=password    Guyza123!
    Sleep    ${DELAY}
    Click Element    css=.border-white:nth-child(1)
    Wait Until Element Contains    xpath=/html/body/div[2]/div    Invalid email or password!
    Close Browser

Login by Keyword TC03
    [Documentation]    ทดสอบการ Login แบบรหัสไม่ตรง
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window   
    Click Element    css=.bg-blue-500 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy0205245@gmail.com
    Sleep    ${DELAY}
    Input Text    name=password    Guyzapa1122!
    Sleep    ${DELAY}
    Click Element    css=.border-white:nth-child(1)
    Wait Until Element Contains    xpath=/html/body/div[2]/div    Invalid Password!
    Close Browser
    
Login by Keyword TC04
    [Documentation]    ทดสอบการ Login แบบไม่ใส่ @
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    
    Click Element    css=.bg-blue-500 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy0205245!gmail.com
    Sleep    ${DELAY}
    Input Text    name=password    Guyza123!
    Sleep    ${DELAY}
    Click Element    css=.border-white:nth-child(1)
    Close Browser

Login by Keyword TC05
    [Documentation]    ทดสอบการ Login แบบรหัสไม่ถึง 8
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

Login by Keyword TC06
    [Documentation]    ทดสอบการ Login แบบไม่ใส่รหัสผ่าน
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    # Optional: Maximizes the browser window for better visibility
    Click Element    css=.bg-blue-500 
    Sleep    ${DELAY}
    Input Text    name=email    guy.guy0205245@gmail.com
    Click Element    css=.border-white:nth-child(1)
    Mouse Over    css=.inline-block
    Wait Until Element Is Visible    xpath=//*[@id="Get-Started"]/div/form/div[2]/label/div/span   timeout=10s
    Element Should Be Visible    xpath=//*[@id="Get-Started"]/div/form/div[2]/label/div/span    Please enter a password
    Capture Page Screenshot
    Close Browser


Login by Keyword TC07
    [Documentation]    ทดสอบการ Login แบบไม่ใส่ อีเมล
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    css=.bg-blue-500    
    Click Element    css=.bg-blue-500 
    Input Text    name=password    Guyzapan
    Click Element    css=.border-white:nth-child(1)
    Mouse Over    css=.form-control:nth-child(2) .inline-block
    Wait Until Element Is Visible    xpath=//*[@id="Get-Started"]/div/form/div[1]/label/div/span   timeout=10s
    Element Should Be Visible    xpath=//*[@id="Get-Started"]/div/form/div[1]/label/div/span    Please enter email
    Capture Page Screenshot
    Close Browser

Login by Keyword TC08
    [Documentation]    ทดสอบการ Login แบบ Emtry  
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

Login by Keyword TC09
    [Documentation]    ทดสอบการ Login แบบมากกว่า 1 roles
    Open Browser    ${URL}    ${BROWSER}
    ${TestCase}=    Set Variable    TS1
    Click Element    //*[@id="root"]/div[3]/div[1]/nav/div/div[1]/button
    ${Username}=    Set Variable    644259025@webmail.npru.ac.th
    ${Password}=    Set Variable    Test-123
    Input Text    name=email    ${Username}
    Input Text    name=password    ${Password}
    Click Element    //*[@id="Get-Started"]/div/form/div[4]/input
    Wait Until Element Contains    xpath=//*[@id="Modal-SelectRoles"]/div/div/h1    What do you want to log in as?
    Close Browser