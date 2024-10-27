*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
DefinePeople
    Sleep    3s
    Click Button    ${People}
    Click Button    ${Young}

StartandEnd_Date
    Click Button    ${Date}
    Click Button    ${Date-Start}
    Click Button    ${Date-End}

StartandEnd_Package    
    Click Button    ${Date}
    Click Button    ${Package-Start}
    Click Button    ${Package-End}


InputSearchHomestay
    Wait Until Element Is Visible    ${NameSearch}    2s
    Input Text      ${NameSearch}     ${InputSearchHomestay}
    Click Element    ${Search}

InputNamePackage
    Wait Until Element Is Visible    ${SearchPackage}
    Click Button    ${SearchPackage}
    Click Element    ${Search}

choose HomeStay
    Sleep    4s
    Click Element    xpath=//*[@id="default-carousel"]/div/div[1]/img

Choose Package
    Sleep    4s
    Click Element    xpath=//*[@id="default-carousel"]/div/div[1]/img

ViewDetailHomestay
    Wait Until Element Is Visible    id=detailRoom 
    Scroll Element Into View    xpath=//*[@id="policy"]/div[1]   
    Element Should Be Visible    id=detailRoom    ประเภทห้อง
    Sleep    3s

ViewDetailPackage
    Sleep    3s
    Scroll Element Into View    id=program
    Wait Until Element Is Visible    id=program
    Element Should Be Visible    id=program  รายละเอียดโปรแกรม
    Sleep    3s

SortByHomestays Recommend
    Sleep    3s
    Scroll Element Into View    id=ทั้งหมด[P]

SortByPackage Recommend
    Sleep    3s
    Click Element    ${SortByType}
    Scroll Element Into View    id=footer

Choose Homestays Recommend
    Sleep    3s
    Click Element    ${Homestay}
    Wait Until Element Is Visible    id=date-buttonHomstay
    Scroll Element Into View    id=date-buttonHomstay
    Click Button    id=date-buttonHomstay
    Click Button    ${Homestay-Start}
    Click Button    ${Homestay-End} 
Choose Package Recommend
    Sleep    3s
    Click Element   ${Package}

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}