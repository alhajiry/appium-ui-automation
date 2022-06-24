Given(/^Verify skip button displayed$/) do
    is_displayed = skip_button_displayed()

    if(is_displayed)
        puts "skip button displayed"
    else
        raise "skip button not displayed"
    end
end
