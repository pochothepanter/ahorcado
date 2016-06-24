Given(/^inicio del juego$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

When(/^ingresa letra "(.*?)"$/) do |letra|
  fill_in("letra", :with => letra)
  click_button(:confirmar)
end

Then(/^debo ver contador en "(.*?)"$/) do |count|
  last_response.body.should =~ /<span id="contador">#{count}<\/span>/m
end

