

# # from selenium import webdriver

# # # Set up the WebDriver (e.g., ChromeDriver)
# # driver = webdriver.Chrome()

# # # Navigate to a website
# # driver.get("https://example.com")

# # # Perform actions (e.g., click a button)
# # button = driver.find_element_by_id("myButton")
# # button.click()

# # # Close the browser
# # driver.quit()


# from selenium import webdriver

# # Set up the WebDriver (e.g., ChromeDriver)
# driver = webdriver.Chrome()

# # Navigate to the login page
# driver.get("https://shiabooks.org/#/")

# Find and fill the username and password fields
# username_input = driver.find_element_by_id("User Name")
# password_input = driver.find_element_by_id("Password")

# username_input.send_keys("admin")
# password_input.send_keys("190006")

# # Submit the form
# password_input.submit()


from selenium import webdriver
import time

# Create a new instance of the Firefox driver
# driver = webdriver.Firefox()
driver = webdriver.Chrome()

# Navigate to the website
driver.get("https://shiabooks.org/#/")

# Find the upload button and click on it
upload_button = driver.find_element("id", "upload-button")
upload_button.click()

# Wait for the upload page to load
time.sleep(2)

# Find the file input element and send the path of the book to it
file_input = driver.find_element_by_id("file-input")
file_input.send_keys("/path/to/your/book.pdf")

# Find the submit button and click on it
submit_button = driver.find_element_by_id("submit-button")
submit_button.click()

# Wait for the upload to complete
time.sleep(5)

# Close the browser
driver.quit()
