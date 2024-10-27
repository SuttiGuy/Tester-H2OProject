*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resources/variables.robot
Resource    resources/keywords.robot
Library    XML

*** Test Cases ***
TC3001 ค้นหาที่พัก โดยกรองจาก Homestays Recommend
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
    SortByHomestays Recommend
    Choose Homestays Recommend
    ViewDetailHomestay
    Capture Screenshot
    Close Browser

TC3002 ค้นหาที่พัก โดยกรองจาก Package Recommend
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
    SortByPackage Recommend
    Choose Package Recommend
    ViewDetailPackage
    Capture Screenshot 
    Close Browser

TC3003 ดูรายละเอียดที่พัก จากการค้นหาจากชื่อที่พัก
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    DefinePeople
    StartandEnd_Date
    InputSearchHomestay
    Choose HomeStay
    ViewDetailHomestay
    Capture Screenshot
    Close Browser

TC3004 ดูรายละเอียดแพ็คเกจ จากการค้นหาจากชื่อแพ็คเกจ
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    DefinePeople
    StartandEnd_Package  
    InputNamePackage
    Choose Package
    ViewDetailPackage
    Capture Screenshot
    Close Browser