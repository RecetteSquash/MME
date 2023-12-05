*** Settings ***
Documentation    BDD RF3
Metadata         ID                           386767
Metadata         Reference                    rf3
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
BDD RF3
    [Documentation]    BDD RF3

    Given dormir
    Then repos


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_386767_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_386767_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_386767_SETUP_VALUE} =    Get Variable Value    ${TEST_386767_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_386767_SETUP_VALUE is not None
        Run Keyword    ${TEST_386767_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_386767_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_386767_TEARDOWN}.

    ${TEST_386767_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_386767_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_386767_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_386767_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
