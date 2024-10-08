*** Variables ***
${BROWSER}     Edge
${URL}         https://h2-o-project-two.vercel.app
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
${Date-Start}    xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[28]
${Date-End}      xpath=//*[@id="Calendar"]/div/div[2]/div/div/div/div[2]/button[29]
${Search}             id=search-Homestay
${Homestay}           id=default-carousel

${Scroll}             xpath=//*[@id="detailTypeRoom"]/div/div/div[2]/div
${bookingHomestay}    xpath=//*[@id="detailTypeRoom"]/div/div/div[2]/div/div[2]/div/div/div[4]/button

${Payment}            xpath=//*[@id="root"]/div[3]/div[2]/div/div/div[1]/div[3]/div/div[4]/button
${CardNumber}         id=cardNumber
${CardExpiry}         id=cardExpiry
${CardCvc}            id=cardCvc
${CardName}           id=billingName
${Pay}                xpath=//*[@id="root"]/div/div/div[2]/main/div/form/div[1]/div/div/div[3]/div/div[3]/button/div[3]

${Checkbill}          xpath=//*[@id="root"]/div[3]/div/p
${Statusbill}         การชำระเงินของคุณได้รับการดำเนินการเรียบร้อยแล้ว

${SCREENSHOT_DIR}  ${OUTPUT DIR}/screenshots/Payment