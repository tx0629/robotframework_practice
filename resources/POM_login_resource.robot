*** Settings ***
Library           SeleniumLibrary
Variables         ../../ObjectLocation/location.py

*** Keywords ***
Open_web
    [Arguments]    ${Login_URL}    ${Browser}
    Open browser    ${Login_URL}    ${Browser}
    Maximize Browser Window

Close_Browser
    Close All Browsers

Input_username
    [Arguments]    ${username}
    input text    ${txt_loginusername}    ${username}

Input_password
    [Arguments]    ${password}
    input text    ${txt_loginpassword}    ${password}

Click_login_bottom
    Click Element    ${loginbottom}

Verify_succesful_login
    Title should be    Login: Mercury Tours
