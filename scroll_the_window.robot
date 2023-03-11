*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
by pixel
    Open Browser    https://www.bbc.co.uk/learningenglish/    chrome
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0,2500)
    sleep    3
    Close Browser

scroll_to_element
    Open Browser    https://www.bbc.co.uk/learningenglish/    chrome
    Maximize Browser Window
    sleep    3
    Scroll Element Into View    //*[@id="heading-things-you-cant-miss"]
    sleep    3
    Close Browser

go_start_and_end
    Open Browser    https://www.bbc.co.uk/learningenglish/    chrome
    Maximize Browser Window
    sleep    3
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    3
    Execute Javascript    window.scrollTo({ \ \ top: \ -document.body.scrollHeight, \ \ \ behavior: "smooth"})
    sleep    3
    Close Browser
