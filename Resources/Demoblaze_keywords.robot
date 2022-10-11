*** Settings ***
Library             SeleniumLibrary
Variables           ../Resources/Demoblaze_locators.yaml

*** Variables ***
${DEMOBLAZE_URL}    https://www.demoblaze.com/index.html
${CHROME_BROWSER}   gc

*** Keywords ***
Open Browser With Google Chrome
    Open Browser                    url=${DEMOBLAZE_URL}   browser=${CHROME_BROWSER}
    Maximize Browser Window

Verify Demoblaze Logo Appears
    Element Should Be Visible       ${Logo}

Verify Top Menu Button Appears
    Element Should Be Visible      ${Home_button}

Verify Banner Appears
    Element Should Be Visible       ${Banner}

Click Login Button In Homepage
    Click Element                   ${Login_button}

Input Username
    Wait Until Element Is Visible   ${TextBox_username}
    Input Text                      ${TextBox_username}    text=test4567

Input Password
    Input Text                      ${TextBox_password}    text=test

Click Login Button In Login Popup
    Click Element                   ${Login_button_inPopUp}
    Sleep                           5

Close Google Chrome Browser
    Close Browser