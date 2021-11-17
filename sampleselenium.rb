require "selenium-webdriver"
require "rspec"

describe "Sample script" do
before(:all) do
	driver = Selenium::Webdriver.for :firefox
	driver.navigate.to "https://www.amazon.in"
	driver.manage.window.maximize
end
it "Search for an item" do
	driver.find_element(:id,'twotabsearchtextbox').click

end 

end