*** Settings ***
Library           SeleniumLibrary
Resource          resource/login_res.txt

*** Test Cases ***
wrong_input
    Open_web
    Invaild_login    123@yourstore.com    123
    [Teardown]

*** Keywords ***
Invaild_login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    click_login_bottom
    Error_msg_should_visible
