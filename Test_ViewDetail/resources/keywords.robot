*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
LoginUser
    Sleep    3s
    Click Element    ${GetStart}
    Input Text    ${Email}    ${UserEmail}
    Input Text    ${Password}    ${UserPassword}
    Click Element    ${Login}


InputNameHomeStay
    Wait Until Element Is Visible    ${NameSearch}    2s
    Click Element    ${NameSearch}
    Input Text      ${NameSearch}    ริม
    Click Element    ${Search}
    Wait Until Element Is Visible    id=detailCard-Homestay    5s
    Click Element    id=detailCard-Homestay

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

StartAndEnd_Date
    Scroll Element Into View    ${People}
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}

Choose the name of the room you are interested
    Wait Until Element Is Visible    ${Name-Room}
    Click Element    ${Name-Room}
    Wait Until Element Is Visible   xpath=//*[@id="detailTypeRoom"]/div/div/div[1]/div/div[2]/div/div/div[4]/button
    Click Button    xpath=//*[@id="detailTypeRoom"]/div/div/div[1]/div/div[2]/div/div/div[4]/button

CheckDetail
    Scroll Element Into View    xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[1]/div[1]/div/div[2]/div[2]/div[1]
    Element Should Contain    xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[1]/div[1]/div/div[2]/div[2]/div[1]    สุทธิพร แก้วสกุลณี
    Element Should Contain    xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[1]/div[1]/div/div[2]/div[2]/div[2]    ${UserEmail}


Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}