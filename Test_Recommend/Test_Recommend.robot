*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resources/variables.robot
Resource    resources/keywords.robot
Library    XML

*** Test Cases ***
TC1001 แนะนำที่พัก จาก Homestays Recommend
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
    SortByHomestays Recommend
    Wait Until Element Contains    id=detailCard-Home    ราชบุรี   
    Element Should Contain    id=detailCard-Home    ราชบุรี
    Capture Screenshot
    Close Browser

TC1002 แนะนำที่แพ็คเกจ จาก Recommended Packages
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
    SortByPackage Recommend
    Wait Until Element Contains    id=Type-Package    การท่องเที่ยวทางน้ำ    
    Element Should Contain    id=Type-Package    การท่องเที่ยวทางน้ำ
    Capture Screenshot
    Close Browser