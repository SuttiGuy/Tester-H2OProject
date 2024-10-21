*** Variables ***
${BROWSER}     Edge
${URL}         http://18.140.2.235/

${SearchPackage}    id=button-homestaySearch-noSelect
${NameSearch}         id=search-text
${People}             id=people-buttonHomstay
${Young}              id=Increase[1]
${Child}              id=Increase[2]
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[26]
${Date-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[27]

${Search}             id=search-Homestay
${InputSearchProvince}    สุพรรณบุรี 
${Detail-HomeStay}    id=Name-Homestay
${Province-HomeStay}    xpath=//*[@id="detailCard-Homestay"]/div[3]/div/p

${Room}    xpath=//*[@id="detailTypeRoom"]/div/div/div[2]/div
${bookimg}    xpath=//*[@id="detailTypeRoom"]/div/div/div[2]/div/div[2]/div/div/div[4]/button

${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/ViewDetail