*** Variables ***
${BROWSER}     Edge
${URL}         http://47.129.247.9/
${GetStart}    id=GetStarted
${Login}       id=Login
${Email}       name=email
${Password}    name=password 
${UserEmail}        Payterlon@gmail.com
${UserPassword}     Guyzaza12!
${NameSearch}         id=search-text
${InputSearchProvince}    สุพรรณบุรี 
${People}             id=people-buttonHomstay
${Young}              id=Increase[1]
${Child}              id=Increase[2]
${Date}               id=date-buttonHomstay
${Date-Start}    xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[32]
${Date-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[33]
${SelectPackage}    id=button-homestaySearch-noSelect
${Package-Start}    xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[33]
${Package-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[34]
${Search}             id=search-Homestay
${Homestay}           id=default-carousel
${Package}            xpath=//*[@id="default-carousel"]/div/div[1]/img

${Scroll}             xpath=//*[@id="detailTypeRoom"]/div/div/div[2]/div
${ScrollPackage}      xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[4]
${bookingHomestay}    xpath=//*[@id="detailTypeRoom"]/div/div/div[2]/div/div[2]/div/div/div[4]/button
${bookingPackage}     id=btn-makePayment

${Payment}            xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[1]/div[3]/div/div[4]/button
${CardNumber}         id=cardNumber
${CardExpiry}         id=cardExpiry
${CardCvc}            id=cardCvc
${CardName}           id=billingName
${Pay}                xpath=//*[@id="root"]/div/div/div[2]/main/div/form/div[1]/div/div/div[3]/div/div[3]/button/div[3]

${Alert}              xpath=/html/body/div[2]/div/div[6]/button[1]

${Checkbill}          xpath=//*[@id="root"]/div[3]/div
${Statusbill}         การชำระเงินของคุณได้รับการดำเนินการเรียบร้อยแล้ว

${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/Payment