*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url_text_input}    https://testpages.herokuapp.com/styled/basic-html-form-test.html
&{Login}          user=tim    password=123
@{Value}          456    789

*** Test Cases ***
test1
    Open Browser    ${url_text_input}    chrome
    Input Text    //*[@id="HTMLFormElements"]/table/tbody/tr[1]/td/input    ${Login.user}
    Input Password    //*[@id="HTMLFormElements"]/table/tbody/tr[2]/td/input    ${Login.password}
    Input Text    //*[@id="HTMLFormElements"]/table/tbody/tr[3]/td/textarea    ${Value}[0]
    Click Element    //*[@id="HTMLFormElements"]/table/tbody/tr[9]/td/input[2]
    Close Browser

Test2
    Open Browser    ${url_text_input}    chrome
    Checkbox Should Be Selected    //*[@id="HTMLFormElements"]/table/tbody/tr[5]/td/input[3]

SetTestVar
    Set Test Variable    ${new_url}    https://demo.nopcommerce.com/
    Open Browser    ${new_url}    Chrome
    Title should be    nopCommerce demo store
    maximize browser window
    Click link    //*[@class="ico-login"]
    Set Test Variable    ${Email_text}    id:Email
    Element should be visible    ${Email_text}
    Element Should Be Enabled    ${Email_text}
    Input text    ${Email_text}    tim811@gmil.com

frame
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/package-summary.html    chrome
    Select Frame    packageListFrame
    Click Element    //*[contains(text(),'org.openqa.selenium.cli')]
    Unselect Frame
    Select Frame    packageFrame
    Wait Until Element Is Visible    //*[contains(text(),'CliCommand')]
    Click Element    //*[contains(text(),'CliCommand')]
    Unselect Frame
    Select Frame    classFrame
    Click Element    //*[contains(text(),'Help')]
    Unselect Frame
    Sleep    3
    Close Browser

Alert
    Open Browser    https://testpages.herokuapp.com/styled/alerts/alert-test.html    chrome
    Click Element    //*[@id="confirmexample"]
    handle alert    accept
    Page Should Contain    You clicked OK, confirm returned true
    Click Element    //*[@id="confirmexample"]
    handle alert    dismiss
    Page Should Contain    You clicked Cancel, confirm returned false
    sleep    3
    Close browser

select_windows
    Open Browser    https://testpages.herokuapp.com/styled/windows-test.html    chrome
    Click Element    //*[@id="gobasicajax"]
    switch window    title=Test Page For Basic Ajax Example
    Title Should Be    Test Page For Basic Ajax Example

mutibrowser
    Open Browser    https://www.youtube.com/    chrome
    Open Browser    https://www.google.com/webhp?hl=zh-TW&sa=X&ved=0ahUKEwiOk67It8f9AhWPklYBHRwiAKgQPAgI    chrome
    switch browser    1
    ${title}    get title
    log to console    ${title}
    switch browser    2
    ${title2}    get title
    log to console    ${title2}
    Close All Browsers

browserkeyword
    Open Browser    https://www.youtube.com/    chrome
    ${loc}    Get Location
    Log To Console    ${loc}
    sleep    2
    go to    https://www.google.com/webhp?hl=zh-TW&sa=X&ved=0ahUKEwiOk67It8f9AhWPklYBHRwiAKgQPAgI
    ${loc}    Get Location
    Log To Console    ${loc}
    sleep    2
    go back
    ${loc}    Get Location
    Log To Console    ${loc}
    Close Browser

Capture Element_Screenshot
    Open Browser    ${url_text_input}    chrome
    Capture element screen shot    //*[@id="HTMLFormElements"]/table/tbody/tr[9]/td/input[2]    /home/tim/robot testpic /buttom.png
    capture page screen shot    /home/tim/robot testpic /all.png
    sleep    3
    close browser
