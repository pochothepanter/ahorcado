Given(/^inicio del juego$/) do
  visit '/'
end

Given(/^Juego Ganado$/) do
  visit '/ganaste'
end

Given(/^Juego Perdido$/) do
  visit '/perdiste'
end


Then(/^debo ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Then(/^debo ver horca/) do
	image_name = "./img/0.jpg"
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end

Then(/^debo ver cabeza/) do
	image_name = "./img/1.jpg"
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end

Then(/^debo ver cuerpo/) do
	image_name = "./img/2.jpg"
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end
Then(/^debo ver brazo uno/) do
	image_name = "./img/3.jpg"
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end
Then(/^debo ver brazo dos/) do
	image_name = "./img/4.jpg"
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end
Then(/^debo ver pierna uno/) do
	image_name = "./img/5.jpg"
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end
Then(/^debo ver pierna dos/) do
	image_name = "./img/6.jpg"
  last_response.should have_xpath("//img[@src=\"#{image_name}\"]")
end


When(/^ingresa letra "(.*?)"$/) do |letra|
  fill_in("letra", :with => letra)
  click_button(:confirmar)
end

Then(/^debo ver contador en "(.*?)"$/) do |count|
  last_response.body.should =~ /<span id="contador">#{count}<\/span>/m
end

