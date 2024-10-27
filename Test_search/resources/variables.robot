*** Variables ***
${BROWSER}    Edge
${URL}        http://47.129.247.9/

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



${Search}             id=search-Homestay
${InputSearchProvince}    ราชบุรี 
${InputSearchHomestay}    บ้านปายดิน
${InputSearchProvincePackage}    นครปฐม
${InputSearchPackage}    สัมผัสประวัติศาสตร์
${Detail-HomeStay}    id=Name-Homestay
${Province-HomeStay}    xpath=//*[@id="detailCard-Homestay"]/div[3]/div/p
${Detail-Package}    id=detailCard-Package

${Sort}    id=sort-buttonPackage
${PriceHightToLow}    id=PriceHightToLow
${id=PriceLowToHight}    id=PriceLowToHight
${id=StarHightToLow}    id=StarHightToLow
${id=StarLowToHight}    id=StarLowToHight


${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/Search
${Detail}        xpath=//*[@id="main-search"]/div[3]/div/div/span