Given(/^User swipe on the "([^"]*)" direction$/) do |direction|
    swipe(direction)
end

Given(/^User swipe (\d+) times on the "([^"]*)" direction$/) do |times, direction|
    for i in 1..times.to_i do
      steps %(
        * User swipe on the "#{direction}" direction
      )
    end
end