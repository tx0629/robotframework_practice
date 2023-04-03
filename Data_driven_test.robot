*** Settings ***
Library           SeleniumLibrary
Resource          resource/login_res.txt

*** Test Cases ***
wrong_input
    Open_web
    Invaild_login    123@yourstore.com    123
    [Teardown]

correct_input
    Open_web
    vaild_input    admin@yourstore.com    admin
    sleep    2
    Close_Browser

Loginout
    Open_web
    vaild_input    admin@yourstore.com    admin
    sleep    2
    Click_logout
    After_logout_should_contain
    sleep    2
    Close Browser

wrong_input_error_account
    Open_web
    Invaild_login    123@yourstore.com    admin
    page should contain    No customer account found
    sleep    2
    Close Browser
    [Teardown]

wrong_input_error_password
    Open_web
    Invaild_login    admin@yourstore.com    123
    page should contain    The credentials provided are incorrect
    sleep    2
    Close Browser
    [Teardown]

*** Keywords ***
Invaild_login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    click_login_bottom
    Error_msg_should_visible

vaild_input
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    click_login_bottom
    After_login_should_contain_Dashboard
