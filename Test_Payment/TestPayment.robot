*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    resouces/variables.robot
Resource    resouces/keywords.robot
Library    String

*** Test Cases ***
TC12001 การชำระเงินที่พัก ผ่าน Promptpay
    [Tags]    TC12001
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window 
    LoginUser
    HomeStayProvine
    DefinePeopleandRoom
    StartandEnd_Date
    Choose the name of the room you are interested
    CheckBill
    Create Screenshot Directory
    Close Browser
