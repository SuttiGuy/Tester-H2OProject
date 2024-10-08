*** Keywords ***
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
    Wait Until Element Is Visible    xpath=//*[@id="userDropdown"]/div[1]/div[2]
    Element Text Should Be    xpath=//*[@id="userDropdown"]/div[1]/div[2]    ${Role1}

CheckUserandRole2
    Click Element    ${Profile} 
    Wait Until Element Is Visible    xpath=//*[@id="userDropdown"]/div[1]/div[2]
    Element Text Should Be    xpath=//*[@id="userDropdown"]/div[1]/div[2]    ${Role2}

Capture Screenshot
    Sleep    3s
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}

Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}