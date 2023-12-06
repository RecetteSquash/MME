*** Settings ***
Documentation    Cas BDD RF 3
...
...              bdd projet 2
Metadata         ID                           386807
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Cas BDD RF 3
    [Documentation]    Cas BDD RF 3

    Given manteau
    Given laine


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_386807_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_386807_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_386807_SETUP_VALUE} =    Get Variable Value    ${TEST_386807_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_386807_SETUP_VALUE is not None
        Run Keyword    ${TEST_386807_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_386807_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_386807_TEARDOWN}.

    ${TEST_386807_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_386807_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_386807_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_386807_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
