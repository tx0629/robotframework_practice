*** Settings ***
Library           SeleniumLibrary
Resource          resource/POM_login_resource.robot

*** Variables ***
${url}            https://demo.guru99.com/test/newtours/
${browser}        chrome
${username}       tutorial
${password}       tutorial

*** Test Cases ***
testlogin
    Open_web    ${url}    ${browser}
    Input_username    ${username}
    Input_password    ${password}
    Click_login_bottom
    Verify_succesful_login
    sleep    3
    Close_Browser
