*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
mouse_action
    Open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize browser window
    Open context menu    //*[@class="context-menu-one btn btn-neutral"]
    Close Browser

double click
    Open browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Double Click Element    //*[@id="HTML10"]/div[1]/button
    Close Browser

Drag_and_Drop
    Open browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Drag And Drop    //*[@id="draggable"]/p    //*[@id="droppable"]
    Close Browser
