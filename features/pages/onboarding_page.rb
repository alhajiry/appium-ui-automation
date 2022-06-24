$skip_button="//android.widget.Button[@content-desc='Skip']"
$login_button="//android.widget.Button[@content-desc='Log In']"


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