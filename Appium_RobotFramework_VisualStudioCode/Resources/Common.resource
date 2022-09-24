*** Settings ***
Library    AppiumLibrary
Resource        ../Resources/AndriodSetUp.resource
Resource        ../Resources/Variables.resource

*** Keywords ***

Open App
          Open Application    ${REMOTE_URL}
      ...  platformName=${PLATFORM_NAME}
      ...  platformVersion=${PLATFORM_VERSION}
      ...  deviceName=${DEVICE_NAME}
      ...  automationName=appium
      ...  app=${APP_LOCATION}      
      ...  appPackage=${PACKAGE_NAME}
 

Login to Together for Her App
    Wait Until Element Is Visible  ${Locator_Select_language}  120s
    Tap  ${Locator_Select_language}
    Wait Until Element Is Visible  ${Locator_Click_on_Next_Button}  120s
    Tap  ${Locator_Click_on_Next_Button}
    Wait Until Element Is Visible  ${Locator_Click_on_FirstName_textbox}  120s
    # Enter First Name and Click on Next Button
    Input Text  ${Locator_Click_on_FirstName_textbox}  ${First_Name}
    Tap  ${Locator_Click_on_Next_Button}
    # select Current Months and click on Next button
    Wait Until Element Is Visible  ${Locator_Select_current_Month}  120s
    Tap  ${Locator_Select_current_Month}
    Tap  ${Locator_Click_on_Next_Button}
    # click on NONE_OF_THE_ABOVE button
    Wait Until Element Is Visible  ${Locator_NONE_OF_THE_ABOVE}  120s
    Tap  ${Locator_NONE_OF_THE_ABOVE}
    # click on Sign in with Google button
    Wait Until Element Is Visible  ${Locator_Click_Gmail_Option}  120s
    Tap  ${Locator_Click_Gmail_Option}
    # click on Add another account Button
    Wait Until Element Is Visible  ${Locator_Add_another_account}  120s
    Tap  ${Locator_Add_another_account}

