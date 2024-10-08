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
    Search by Province  
    Choose the room booking
    Payment
    Capture Screenshot
