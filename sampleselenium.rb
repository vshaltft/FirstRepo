require "selenium-webdriver"
require "rspec"


describe "Sample script" do
	driver = Selenium::WebDriver.for :chrome
	driver.navigate.to "https://www.amazon.in"
	driver.manage.window.maximize
it "Search for an item" do
	sleep 15
	textbox =driver.find_element(:xpath,"//*[@id='twotabsearchtextbox']")
	textbox.send_keys("MObiles",:enter)
end 
end 
