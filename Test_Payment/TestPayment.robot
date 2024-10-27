*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resources/variables.robot
Resource    resources/keywords.robot

*** Test Cases ***
TC12001 การชำระเงินที่พัก ผ่าน Visa
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    LoginUser
    Search by Homestay 
    Choose the room booking
    Payment
    check Payment
    Capture Screenshot
    Close Browser

TC12002 การชำระเงินแพ็คเกจ ผ่าน Visa
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    LoginUser
    Search by Package
    Choose Package
    Payment
    check Payment
    Capture Screenshot
    Close Browser

TC12003 การชำระเงินที่พัก กรณีที่อยากเช่าห้องเพิ่มในวันเดียวกัน
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window 
    LoginUser
    Search by Homestay 
    Choose the room booking
    Alert   
    Payment
    check Payment
    Capture Screenshot
    Close Browser