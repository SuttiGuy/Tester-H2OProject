*** Keywords ***
SortByHomestays Recommend
    Sleep    3s
    Scroll Element Into View    id=ทั้งหมด[P]
    Click Element    ${SortByProvince}

SortByPackage Recommend
    Sleep    3s
    Scroll Element Into View    id=footer
    Click Element    ${SortByType}

Capture Screenshot
    Sleep    5s
    ${timestamp}    Get Time    epoch
    ${screenshot_path}    Set Variable    ${SCREENSHOT_DIR}/screenshot_${timestamp}.png
    Capture Page Screenshot    ${screenshot_path}
