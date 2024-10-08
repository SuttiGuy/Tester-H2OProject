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
    LoginUser
    InputNameHomeStay
    DefinePeopleandRoom
    StartandEnd_Date
    Choose the name of the room you are interested
    CheckDetail
    Capture Screenshot
    Close Browser

TC3002 ดูรายละเอียดห้องพัก จากการกรอกจากจังหวัด
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    LoginUser
    HomeStayProvine
    DefinePeopleandRoom
    StartandEnd_Date
    Choose the name of the room you are interested
    CheckDetail
    Capture Screenshot
    Close Browser


