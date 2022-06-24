@mekari-flex
Feature: Download Mekari Flex

    @install-apps
    Scenario: Install Mekari Flex
        Given Verify skip button displayed
        When User swipe 2 times on the "left" direction
        And User click login button
        And User reset password with email "manual.test@yopmail.com"
        Then Verify reset password success message will be displayed
