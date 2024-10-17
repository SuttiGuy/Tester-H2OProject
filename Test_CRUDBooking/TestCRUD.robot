*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resources/variables.robot
Resource    resources/keywords.robot

*** Test Cases ***
TC11001 ดูสถานะการจองที่พัก
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    LoginUser
    Click Dashboard
    Click Booking
    Sleep    3s
    Scroll Element Into View    xpath=//*[@id="root"]/div[3]/div[2]/div[2]/div/div/div[3]/div/div[7]/div/div[1]/div[1]/div
    Check Status   
    Capture Screenshot
    Close Browser

TC11001 ดูสถานะการจองที่แพ็คเกจ
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    LoginUser
    Click Dashboard
    Click Booking
    Click bookingPackage
    Sleep    3s
    Scroll Element Into View    id=footer
    Capture Screenshot
    Close Browser
    

