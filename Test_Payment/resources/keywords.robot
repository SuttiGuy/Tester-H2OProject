
*** Keywords ***
LoginUser
    Sleep    3s
    Click Element    ${GetStart}
    Input Text    ${Email}    ${UserEmail}
    Input Text    ${Password}    ${UserPassword}
    Click Element    ${Login}

HomeStayProvine
    Scroll Element Into View    id=ทั้งหมด[P]
    Click Button    ${Provine-HOMESTAY}
    Click Element    ${Name-HOMESTAY}

DefinePeopleandRoom
    Wait Until Element Is Enabled    ${People}
    Scroll Element Into View    ${People}
    Click Button    ${People}
    Click Button    ${ADULT}
    Click Button    ${ADULT}
    Click Button    ${ROOM} 

StartandEnd_Date
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}

Choose the name of the room you are interested
    Wait Until Element Is Visible    ${Name-Room}
    Click Element    ${Name-Room}
    Wait Until Element Is Visible   xpath=//*[@id="detailTypeRoom"]/div/div/div[1]/div/div[2]/div/div/div[4]/button
    Click Button    xpath=//*[@id="detailTypeRoom"]/div/div/div[1]/div/div[2]/div/div/div[4]/button

CheckBill
    Scroll Element Into View    xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[1]/div[3]/div/div[4]/button
    Click Element    xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[1]/div[3]/div/div[4]/button
    Sleep    3s
    Wait Until Element Is Enabled    id=one-time-code     3s
    Input Text    id=one-time-code   000000
    Sleep    6s
    Click Element    xpath=//div[@id='root']/div/div/div[2]/main/div/form/div/div/div/div[2]/div/div/div/div/div[2]/button/div/span/div[2]
    Sleep    4s


Create Screenshot Directory
    Create Directory    ${SCREENSHOT_DIR}
    Remove Old Screenshots
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}

Remove Old Screenshots
    ${files}    List Files In Directory    ${SCREENSHOT_DIR}
    FOR    ${file}    IN    @{files}
        Remove File    ${SCREENSHOT_DIR}/${file}
    END