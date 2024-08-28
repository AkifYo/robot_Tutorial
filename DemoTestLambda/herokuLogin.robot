*** Settings ***
Library  Browser

*** Variables ***

${browser}      Chromium
${url}          https://the-internet.herokuapp.com/login
${expected url}  https://the-internet.herokuapp.com/secure 

*** Test Cases ***
Test 1

    New Browser  browser=${browser}  headless=False
    New Page  ${url}
    Type Text  id=username  tomsmith
    Type Text  id=password  SuperSecretPassword!
    Click  css=button >> text=Login
    Log  message=Login is succesful
    Sleep  4
    ${current url}  Get Url
    Should Be Equal  ${current url}  ${expected url}


  


*** Keywords ***