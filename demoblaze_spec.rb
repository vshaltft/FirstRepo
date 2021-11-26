require './spec_helper.rb'
require 'selenium-webdriver'
require 'rspec'

describe "Script to signin and order " do
it "Order a Bagpack and logout " do
visit("https://www.saucedemo.com/")
        # expect(page).to have_text("SWAGLABS")
        details ={:password => "secret_sauce", :username=> "standard_user"}
        find(:xpath, "//*[@id ='user-name']").set(details[:username])
        find(:xpath, "//*[@id='password']").set(details[:password])
        find(:xpath, "//*[@id ='login-button']").click
        expect(page).to have_text("PRODUCTS")
        find(:xpath, "//div[text()='Sauce Labs Backpack']").click
        find(:xpath, "//button[text()='Add to cart']").click
        find(:xpath,  "//span[@class='shopping_cart_badge']").click
        expect(page).to have_text("YOUR CART")
        find(:xpath ,"//button[text()='Checkout']").click
        expect(page).to have_text("CHECKOUT: YOUR INFORMATION")
        address_details={:fname=>"standard",:lname=>"user",:postcode=>"675432"}
        find(:xpath ,"//input[@id='first-name']").set(details[:fname])
        find(:xpath ,"//input[@id='last-name']").set(details[:lname])
        find(:xpath ,"//input[@id='postal-code']").set(details[:postcode])
        find(:xpath ,"//button[text()='Open Menu']").click
        find(:xpath ,"/a[text()='Logout']").click
        page.save_screenshot()
end
end 


