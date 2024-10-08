*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resources/variables.robot
Resource    resources/keywords.robot
Library    String

*** Test Cases ***
TC11001 ดูสถานะการจองที่พัก
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    LoginUser
    Click Dashboard
    Click Booking
    Check Status   
    Sleep    3s
    Capture Page Screenshot
    Close Browser
    

