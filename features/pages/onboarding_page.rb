$skip_button="//android.widget.Button[@content-desc='Skip']"
$login_button="//android.widget.Button[@content-desc='Log In']"
$forgot_pass_button="//android.view.View[@content-desc='Lupa password']/android.widget.TextView"
$reset_pass_button="//*[@resource-id='reset_password']"
$user_email_field="//*[@resource-id='user_email']"
$alert_reset_pass_instruction="//*[@resource-id='alert-success-be']"


def input_search(app)
    $driver.find_element(:id,$search_box).click
    $driver.find_element(:id,$search_box_input).send_keys(app)
end

def skip_button_displayed
    is_displayed = $driver.find_element(:xpath, $skip_button)
    return is_displayed
end

def click_login_button
    $driver.find_element(:xpath,$login_button).click
end

def click_forgot_pass_button
    $driver.find_element(:xpath,$forgot_pass_button).click
end

def input_user_email(email)
    $driver.find_element(:xpath,$user_email_field).send_keys(email)
end

def click_reset_pass_button
    $driver.find_element(:xpath,$reset_pass_button).click
end

def assert_success_msg
    is_displayed = $driver.find_element(:xpath,$alert_reset_pass_instruction)

end