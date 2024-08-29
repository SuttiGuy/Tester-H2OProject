*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${BROWSER}    Edge
${URL}        http://localhost:5173
${GetStart}   id=GetStarted
${Sing-up}    id=NoAccount-HaveAccount
${Name}       name=name
${LastName}   name=lastName
${Email}      name=email
${Password}   name=password
${Confirm}    name=ConfirmPassword
${Phone}      name=phone
${SignUp}     id=SignUp
${CheckBox}    id=reCAPTCHA
${OTP1}        id=otp[0]
${OTP2}        id=otp[1]
${OTP3}        id=otp[2]
${OTP4}        id=otp[3]
${OTP5}        id=otp[4]
${OTP6}        id=otp[5]

*** Test Cases ***
RegisterUser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window    
    Click Element    ${GetStart}
    Click Element    ${Sing-up}
    InputName
    InputLastName
    InputEmail
    InputPassword
    InputConfirmPassword
    InputPhoneNumber
    Click Button    ${SignUp}
    CheckBoxNotRobot
    Sleep    10s
    OTP
    Capture Page Screenshot
    

*** Keywords ***
InputName
    Wait Until Element Is Visible    ${Name}    2s
    Input Text      ${Name}    Suttiguy 

InputLastName
    Input Text    ${LastName}    Kaewsakun

InputEmail
    Input Text    ${Email}    Pattenkill@gmail.com

InputPassword
    Input Text    ${Password}    Guyei_ei2

InputConfirmPassword   
    Input Text    ${Confirm}    Guyei_ei2

InputPhoneNumber
    Input Text    ${Phone}    614294288

CheckBoxNotRobot
    Sleep    10s
    Wait Until Element Is Visible    ${CheckBox}    10s
    Click Element    ${CheckBox}

OTP
    Wait Until Element Is Visible    ${OTP1}    5s
    Input Text    ${OTP1}    1
    Input Text    ${OTP2}    2
    Input Text    ${OTP3}    3
    Input Text    ${OTP4}    4
    Input Text    ${OTP5}    5
    Input Text    ${OTP6}    6