*** Settings ***
Library         SeleniumLibrary
Library         ./TestLibrary.py

*** Variables ***
${URL1}     http://localhost/index1
${URL2}     http://localhost/index2
${BROWSER}        Chrome

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL1}    ${BROWSER}