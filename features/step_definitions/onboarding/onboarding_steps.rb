Given(/^Verify skip button displayed$/) do
    is_displayed = skip_button_displayed()

    if(is_displayed)
        puts "skip button displayed"
    else
        raise "skip button not displayed"
    end
end

When(/^User click login button$/) do
    click_login_button()
end

When(/^User reset password with email "([^"]*)"$/) do |email|
    click_forgot_pass_button()
    input_user_email(email)
    click_reset_pass_button()
end

Then(/^Verify reset password success message will be displayed$/) do
    is_displayed= assert_success_msg()

    if is_displayed
        puts "reset password message displayed"
    else
        raise "reset password message not displayed"
    end

end




