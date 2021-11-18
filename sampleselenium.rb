require "selenium-webdriver"
require "rspec"


describe "SCript to add item in the cart" do
	before(:all) do
	driver = Selenium::WebDriver.for :chrome
	driver.navigate.to "https://www.amazon.in"
	driver.manage.window.maximize
end 
context "Search for different laptops" do
it "Search for an  HP Pavillion Laptop laptop" do
	sleep 15
	textbox =driver.find_element(:xpath,"//*[@class='nav-search-field ']/input")
	textbox.send_keys("laptops",:enter)
	selecthp = driver.find_element(:xpath,"//*[contains(text(),'HP Pavilion (2021)')]").click()
	sleep 5
	handles = driver.window_handles
	childwin = driver.switch_to.window(handles[1])
	sleep 2
	addtocartbtn = driver.find_element(:xpath, "//*[@id ='submit.add-to-cart']")
    driver.execute_script "arguments[0].scrollIntoView();",addtocartbtn
    addtocartbtn.click() 
    sleep 5
    cartelmnt = driver.find_element(:xpath,"//span[@id='attach-sidesheet-view-cart-button-announce']")
    wait = Selenium::WebDriver::Wait.new(timeout: 30)
    wait.until { cartelmnt.displayed?}
end 
end 
end
