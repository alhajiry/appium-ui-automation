def screenshot(file)
  $driver.screenshot("screenshot/#{file}.png")
  attach("screenshot/#{name}.png", "image/png")
end

def swipe(direction)
  device_height = $driver.window_size.height
  device_width = $driver.window_size.width

    if(direction == 'right')
      start_x = device_width * 0.05
      end_x = device_width * 0.9
      start_y = device_height * 0.75
      end_y = device_height * 0.75
    else
      start_x = device_width * 0.9
      end_x = device_width * 0.01
      start_y = device_height * 0.75
      end_y = device_height * 0.75
    end

    Appium::TouchAction.new.press(x: start_x, y: start_y).wait(800).move_to(x: end_x, y: end_y).release.perform
    puts "sucess swiped #{direction}"
end