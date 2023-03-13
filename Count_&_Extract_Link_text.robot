*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
count link
    Open Browser    https://demo.guru99.com/test/newtours/    chrome
    ${count}=    Get Element Count    XPath://a
    #log    ${count}
    FOR    ${i}    IN RANGE    1    ${count}+1
    ${link_text}=    Get Text    (//a)[${i}]
    log    ${link_text}
    END
    sleep    2
    Close Browser
