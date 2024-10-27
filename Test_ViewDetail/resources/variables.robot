*** Variables ***
${BROWSER}     Edge
${URL}         http://47.129.247.9/

${SearchPackage}    id=button-homestaySearch-noSelect
${NameSearch}         id=search-text
${People}             id=people-buttonHomstay
${Young}              id=Increase[1]
${Child}              id=Increase[2]
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[28]
${Date-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[29]
${Package-Start}    //*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[28]
${Package-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[32]
${Homestay-Start}    xpath=//*[@id="homeStayDetail"]/div[1]/nav/div/div[2]/div/div/div/div[2]/div/div/div/div[2]/button[29]
${Homestay-End}    xpath=//*[@id="homeStayDetail"]/div[1]/nav/div/div[2]/div/div/div/div[2]/div/div/div/div[2]/button[30]

${Search}             id=search-Homestay
${InputSearchHomestay}    บ้านปายดิน
${InputSearchPackage}    สัมผัสประวัติศาสตร์


${Homestay}    xpath=//*[@id="root"]/div[3]/div[2]/div[1]/div[2]/div[3]/div
${SortByType}    id=ทางน้ำ
${Package}    xpath=//*[@id="root"]/div[3]/div[2]/div[2]/div[2]/div[1]


${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/ViewDetail
