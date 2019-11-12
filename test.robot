*** Settings ***
Resource        keywords.resource

*** Variables ***
${URL1}     http://localhost/index1
${URL2}     http://localhost/index2

*** Test Cases ***
Valid Login
    Open Browser To Login Page

Main Test 1
    Go To  ${URL1}
    Index1 Should Be  Hello World1!

Main Test 2
    Go To  ${URL2}
    Index2 Should Be  Hello World1!

Close Test
    Close Browser