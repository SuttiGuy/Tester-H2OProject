*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resources/variables.robot
Resource    resources/keywords.robot
Library    XML

*** Test Cases ***
TC3001 ดูรายละเอียดที่พัก จากการค้นหาจากชื่อที่พัก
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    DefinePeople
    StartandEnd_Date
    InputNameProvince
    choose HomeStay
    ViewDetail
    Capture Screenshot
    Close Browser

# TC3002 ดูรายละเอียดห้องพัก จากการกรอกจากจังหวัด
#     Open Browser    ${URL}    ${BROWSER}
#     Maximize Browser Window 

TC3001 ดูรายละเอียดที่พัก จากการกรองที่พัก
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
