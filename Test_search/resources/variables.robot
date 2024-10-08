*** Variables ***
${BROWSER}    Edge
${URL}        https://h2-o-project-two.vercel.app
${NameSearch}         id=search-text
${People}             id=people-buttonHomstay
${Young}              id=Increase[1]
${Child}              id=Increase[2]
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[26]
${Date-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[27]
${Search}             id=search-Homestay
${InputSearchProvince}    สุพรรณบุรี 
${InputSearchHomestay}    บ้านปายดิน
${Detail-HomeStay}    id=Name-Homestay
${Province-HomeStay}    xpath=//*[@id="detailCard-Homestay"]/div[3]/div/p
${Room}               xpath=//*[@id="right-card"]/div/div[1]/span/div
${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/Search
${Detail}        xpath=//*[@id="main-search"]/div[3]/div/div/span
${SearchPackage}    id=button-homestaySearch-noSelect