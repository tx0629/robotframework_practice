*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
table_validation
    Open browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Scroll Element Into View    //*[@id="HTML1"]/div[1]/table
    ${row}=    Get Element Count    //*[@id="HTML1"]/div[1]/table/tbody/tr
    ${col}=    Get Element Count    //*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
    log     ${row}
    log    ${col}
    ${data}=    Get Text    //*[@id="HTML1"]/div[1]/table/tbody/tr[2]/td[4]
    log    data=${data}
    table column should contain    //*[@id="HTML1"]/div[1]/table    3    Subject
    table row should contain    //*[@id="HTML1"]/div[1]/table    6    Master In Java
    table cell should contain    //*[@id="HTML1"]/div[1]/table    7    2    Amit
    tableheader should contain    //*[@id="HTML1"]/div[1]/table    BookName
    Close Browser
