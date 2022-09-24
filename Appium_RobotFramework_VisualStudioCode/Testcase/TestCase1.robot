*** Settings ***
Library    AppiumLibrary
Library    String
Library	   OperatingSystem
Resource        ../Resources/Common.resource


# robot -d Results TestCase1.robot
*** Test Cases ***
Testcase1
    Open App
    Login to Together for Her App
