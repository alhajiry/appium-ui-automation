require 'appium_lib'
require 'rspec/expectations'

include RSpec::Matchers

capabilities = {
  caps: {
    deviceName: 'emulator-5554',
    platformName: 'Android',
    platformVersion: '10.0',
    fullReset: false,
    noReset: true,
    appPackage: 'com.mekari.flex',
    appActivity: 'com.mekari.flex.MainActivity',
    appWaitActivity: '*'
    
  },
  appium_lib:{
    server_url: 'http://0.0.0.0:4723/wd/hub',
    wait: 30
  }
}

@driver = Appium::Driver.new(capabilities, true)
@touch = Appium::TouchAction.new(@driver)
Appium.promote_appium_methods Object
