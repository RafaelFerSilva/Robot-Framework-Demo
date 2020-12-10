*** Settings ***
Documentation    Automation Robot Framework Demo

Library    Selenium2Library

Variables    ../../common/config/conf_variables.py

*** Test Cases ***
Open Automation Pratice Site
    Open Browser    ${TESTED_HOST}    ${BROWSER}    None    ${SELENIUM_HOST}
    Maximize Browser Window
    Wait Until Element Is Visible    css=#index
    Close Browser
