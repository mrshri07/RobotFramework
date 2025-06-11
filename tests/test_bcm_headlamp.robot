*** Settings ***
Library     ../keywords/CanLibrary.py
Resource    ../resources/Variables.robot

*** Test Cases ***
Validate Headlamp ON Signal
    [Tags]    CAN    BCM
    Connect To CAN
    Send CAN Frame    ${HEADLAMP_ON_FRAME}
    Wait For Signal    BCM_HEADLAMP_STATUS    0x01    2s
    Disconnect CAN
