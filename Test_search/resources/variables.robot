*** Variables ***
${BROWSER}    Edge
${URL}        https://h2-o-project-two.vercel.app/

${SearchPackage}    id=button-homestaySearch-noSelect
${NameSearch}         id=search-text
${People}             id=people-buttonHomstay
${Young}              id=Increase[1]
${Child}              id=Increase[2]
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[26]
${Date-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[27]
${Package-Start}    xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[25]
${Package-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[32]


${Search}             id=search-Homestay
${InputSearchProvince}    สุพรรณบุรี 
${InputSearchHomestay}    บ้านปายดิน
${InputSearchProvincePackage}    นครปฐม
${InputSearchPackage}    ไหว้พระ
${Detail-HomeStay}    id=Name-Homestay
${Province-HomeStay}    xpath=//*[@id="detailCard-Homestay"]/div[3]/div/p
${Detail-Package}    id=detailCard-Package



${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/Search
${Detail}        xpath=//*[@id="main-search"]/div[3]/div/div/span