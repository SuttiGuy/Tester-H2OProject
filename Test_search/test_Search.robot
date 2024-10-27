*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resources/variables.robot
Resource    resources/keywords.robot
Library    XML

*** Test Cases ***
TC2001 ค้นหาที่พักโดยค้นหาจากชื่อที่จังหวัด
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    InputNameProvince
    DefinePeople
    StartandEnd_Date
    Click Element    ${Search}
    Wait Until Element Contains    ${Province-HomeStay}    ${InputSearchProvince}     10s  
    Element Should Contain    ${Province-HomeStay}   ${InputSearchProvince} 
    Capture Screenshot
    Close Browser

TC2002 ค้นหาที่พักโดยค้นหาจากชื่อที่พัก
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    InputNameHomeStay
    DefinePeople
    StartandEnd_Date
    Click Element    ${Search}
    Wait Until Element Contains    ${Detail-HomeStay}    ${InputSearchHomestay}     10s  
    Element Should Contain    ${Detail-HomeStay}    ${InputSearchHomestay}
    Capture Screenshot
    Close Browser

TC2003 ค้นหาที่แพ็คเกจโดยค้นหาจากชื่อจังหวัด
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    InputNameProvincePackage
    DefinePeople
    StartandEnd_Package 
    Click Element    ${Search}
    Sleep    3s
    Wait Until Element Contains    ${Detail-Package}    ${InputSearchProvincePackage}     10s  
    Element Should Contain    ${Detail-Package}    ${InputSearchProvincePackage}
    Capture Screenshot
    Close Browser

TC2004 ค้นหาที่แพ็คเกจโดยค้นหาจากชื่อแพ็คเกจ
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    InputNamePackage
    DefinePeople
    StartandEnd_Package 
    Click Element    ${Search}
    Sleep    3s
    Wait Until Element Contains    ${Detail-Package}    ${InputSearchPackage}     10s  
    Element Should Contain    ${Detail-Package}         ${InputSearchPackage}
    Capture Screenshot
    Close Browser

TC2005 ค้นหาที่พักโดยค้นหาจากชื่อจังหวัด จากการกรองข้อมูล
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    InputNameProvince
    DefinePeople
    StartandEnd_Date 
    Click Element    ${Search}
    SortByPrice
    Wait Until Element Contains    ${Province-HomeStay}    ${InputSearchProvince}     10s  
    Element Should Contain    ${Province-HomeStay}   ${InputSearchProvince} 
    Capture Screenshot
    Close Browser

TC2006 ค้นหาที่พัก กรณีที่ไม่มีที่พักในระบบ
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
    InputNameHomeStay2
    StartandEnd_Date
    Click Element    ${Search}
    Wait Until Element Contains    id=Homestay_notFound    NOT FOUND HOMESTAY
    Element Should Contain    id=Homestay_notFound   NOT FOUND HOMESTAY
    Capture Screenshot
    Close Browser

TC2007 ค้นหาแพ็คเกจ กรณีที่ไม่มีแพ็คเกจในระบบ
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
    InputNamePackage2
    StartandEnd_Package
    Click Element    ${Search}
    Wait Until Element Contains    id=Package_notFound    NOT FOUND PACKAGE
    Element Should Contain    id=Package_notFound    NOT FOUND PACKAGE
    Capture Screenshot
    Close Browser