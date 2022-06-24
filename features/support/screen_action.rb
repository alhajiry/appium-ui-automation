def screenshot(file)
  $driver.screenshot("screenshot/#{file}.png")
  attach("screenshot/#{name}.png", "image/png")
end