*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://testautomationpractice.blogspot.com/    # the url

*** Test Cases ***
no argument keyword
    launch browser

keyword with argument
    ${page_title}    launch browser with argument    ${url}    chrome
    Log To Console    ${page_title}
    sleep     1
    Close Browser

*** Keywords ***
launch browser
    Open browser    ${url}    chrome
    Maximize browser window
    Close Browser
    # open and maximium browser

launch browser with argument
    [Arguments]    ${aurl}    ${abrowser}
    Open browser    ${aurl}    ${abrowser}
    Maximize browser window
    ${title}    get title
    [Return]    ${title}
