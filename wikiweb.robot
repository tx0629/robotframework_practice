*** Settings ***
Library           Selenium2Library

*** Test Cases ***
openweb
    [Setup]
    Open Browser    https://zh.wikipedia.org/wiki/Wiki    chrome

Click Wiki Catagory
    Open Browser    https://zh.wikipedia.org/wiki/Wiki    chrome
    Click Element    //*[@id="n-indexpage"]/a

Input and Search NBA
    Open Browser    https://zh.wikipedia.org/wiki/Wiki    chrome
    Input Text    //*[@id="searchInput"]    NBA
    Click Element    //*[@id="searchButton"]
     Capture Page Screenshot
