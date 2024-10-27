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
    Wait Until Element Is Visible    ${SearchPackage}    5s
    Click Button    ${SearchPackage}
    Input Text    ${NameSearch}    ${InputSearchPackage}
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
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[4]/div  
    Scroll Element Into View    id=review
    Element Should Be Visible    xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[4]/div  กำหนดการเดินทาง
    Sleep    3s

SortByHomestays Recommend
    Sleep    3s
    Scroll Element Into View    id=ทั้งหมด[P]

SortByPackage Recommend
    Sleep    3s
    Scroll Element Into View    id=footer
    Click Element    ${SortByType}
    Wait Until Element Contains    id=Type-Package    การท่องเที่ยวทางน้ำ    
    Element Should Contain    id=Type-Package    การท่องเที่ยวทางน้ำ

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
    Scroll Element Into View    id=package

Capture Screenshot
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}