*** Variables ***
${BROWSER}     Edge
${URL}         http://localhost:5173
${GetStart}    id=GetStarted
${Login}       id=Login
${Email}       name=email
${Password}    name=password 
${UserEmail}        guy.guy0205245@gmail.com
${UserPassword}    Guyza123!
${People}             id=people-buttonPackage
${ADULT}              id=IncreasePeople
${CHILD}              id=IncreaseChildren
${ROOM}               id=IncreaseRoom
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=//*[@id="homeStayDetail"]/div[1]/nav/div/div[2]/div/div/div/div[2]/div/div/div/div[2]/button[27]
${Date-End}      xpath=//*[@id="homeStayDetail"]/div[1]/nav/div/div[2]/div/div/div/div[2]/div/div/div/div[2]/button[29]
${Provine-HOMESTAY}    id=สุพรรณบุรี
${Name-HOMESTAY}       id=detailCard-Home
${Name-Room}           xpath=//*[@id="homeStayDetail"]/div[3]/div/a[3]
${CARDNUMBER}      id=cardNumber
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/HomeStay